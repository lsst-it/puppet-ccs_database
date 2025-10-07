# @summary
#   Ensure localdb future partitions exist
#
class ccs_database::cron {
  if $ccs_database::cronjob_partitions {
    cron::weekly { 'localdb_partition':
      minute      => '7',
      hour        => '12',
      weekday     => '1',
      user        => 'ccs',
      command     => 'localdb -app backup-utilities -fp 5 -c',
      environment => ['PATH="/opt/lsst/ccs/prod/bin:/bin"'],
      description => 'Ensure localdb future partitions exist',
    }
  }
}
