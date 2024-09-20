# @summary
#   Install sql database service.
#
# @param database
#   String giving name of database to init.
#
# @param user
#   String giving database user.
#
# @param password
#   String giving database password
#
# @param url
#   String giving url for database access.
#   Default jdbc:mysql://HOSTNAME:3306/DATABASE.
#
# @param max_connections
#   Integer value to use for server max_connections, default 300.
#
class ccs_database (
  String[1] $database,
  Optional[Variant[Sensitive[String[1]],String[1]]] $user = undef,
  Optional[Variant[Sensitive[String[1]],String[1]]] $password = undef,
  Optional[String[1]] $url = undef,
  Integer[1] $max_connections = 300,
) {
  # XXX this would be better in a site profile
  ## Use first mountpoint that exists, else /home/mysql. TODO hiera?
  $datadirs = [
    '/lsst-ir2db01',
    '/data',
    '/home',
  ].filter |$disk| { $facts['mountpoints'][$disk] }

  $datadir0 = pick_default($datadirs[0], '/home')
  $datadir = "${datadir0}/mysql"
  $socket = "${datadir}/mysql.sock"

  file { $datadir:
    ensure  => directory,
    owner   => 'mysql',
    group   => 'mysql',
    mode    => '0755',
    require => Class['mysql::server'],  # mysql user
  }

  $options = {
    'mysqld' => {
      'datadir'                 => $datadir,
      'socket'                  => $socket,
      'innodb_buffer_pool_size' => '1G',
      'max_connections'         => $max_connections,
      'tmpdir'                  => $facts['mountpoints']['/scratch'] ? {
        undef   => undef,
        default => '/scratch/mysqltmp',
      },
    },
    'client' => {
      'socket' => $socket,
    },
  }

  ## Default RHEL8 version is 10.3; get the newer version from appstream.
  if fact('os.release.major') == '8' {
    package { 'mariadb':
      ensure   => '10.5',
      provider => dnfmodule,
      before   => Class['mysql::server'],
    }
  }

  class { 'mysql::server':
#    package_name            => 'mariadb-server',
#    service_name            => 'mariadb',
    package_ensure          => 'present',
    config_file             => '/etc/my.cnf.d/zzz-lsst-ccs.cnf',
    ## Remove some dubious defaults, eg: anonymous user, test database.
    remove_default_accounts => true,
    restart                 => false,
    service_enabled         => true,
    service_manage          => true,
    options                 => $options,
  }

  # XXX this would be better in a site profile
  if empty($password) {
    ## This only happens at slac. Elsewhere, we use private hiera.
    $ccs_dbarchive = lookup('ccs_dbarchive', String)
    ## Note this reads the file on the master, which is ok.
    ## FIXME this required file to be world-readable, why?
    $db_password = strip(file("${ccs_dbarchive}/ccsdbpasswd"))
  } else {
    $db_password = $password
  }

  $db_user = pick($user, 'ccs')

  if $database and $db_password {
    ## Create empty db called (eg) comcamdbprod;
    ## add ccs account with all privs on that db;
    ## TODO: localdb -u to create tables?
    mysql::db { $database:
      user     => $db_user.unwrap,
      password => $db_password.unwrap,
      ## TODO when doing this by hand, we used both ccs@% and ccs@localhost.
      host     => '%',
      grant    => 'ALL',
      ## Module defaults to 'utf8', 'utf8_general_ci'.
      ## It will modify an existing database.
      ## There does not seem to be a way to specify "use server default".
      charset  => 'latin1',
      collate  => 'latin1_swedish_ci',
    }
  }

  $shost = regsubst($facts['networking']['fqdn'], '\..*', '', 'G')

  $db_url = pick($url, "jdbc:mysql://${shost}:3306/${database}")

  include ccs_database::etc
}
