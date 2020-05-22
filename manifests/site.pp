node default { 
  file { '/root/README' :
    ensure => file,
    content => 'This is readme',
  }
}
node 'master.puppet.vm' {
  include role::app_server
}
