# @summary
#   Configure /etc/ccs for CCS database
#
class ccs_database::etc {
  $db_url = $ccs_database::db_url
  $db_user = $ccs_database::db_user
  $db_pass = $ccs_database::db_password

  $dir = '/etc/ccs'

  $ptitle = regsubst($title, '::.*', '', 'G')

  $statusfile = 'statusPersister.properties'

  file { "${dir}/${statusfile}":
    ensure  => file,
    owner   => 'ccs',
    group   => 'ccsadm',
    mode    => '0660',
    content => epp("${ptitle}/${statusfile}.epp", {
        'url'  => $db_url,
        'user' => $db_user,
        'pass' => $db_pass,
      },
    ),
  }
}
