# == Class: telegraf::config
#
# only values which are effectivly changed will be managed
#
# More information on these settings available at:
#    https://github.com/influxdb/telegraf
#
# DO NO CALL DIRECTLY
class telegraf::config {

  file { '/etc/opt/telegraf/telegraf.conf':
    ensure  => $telegraf::ensure,
    content => template('telegraf/telegraf.conf.erb'),
    mode    => '0600',
    owner   => 'root',
    group   => 'root',
  }

}
