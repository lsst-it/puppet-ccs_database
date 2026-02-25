# @summary
#   Ensure localdb future partitions exist
#
class ccs_database::cron {
  if $ccs_database::cronjob_command !~ Undef {
    cron::weekly { 'localdb_partition':
      minute      => '7',
      hour        => '12',
      weekday     => '1',
      user        => 'ccs',
      command     => $ccs_database::cronjob_command,
      environment => ['PATH="/opt/lsst/ccs/prod/bin:/bin"'],
      description => 'Weekly cron job for CCS localdb partitions',
    }
  }
}
