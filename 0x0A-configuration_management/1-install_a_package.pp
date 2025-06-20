# Using Puppet to install flask from pip3

package { 'python3-pip':
  ensure => installed,
}

exec { 'install-flask':
  command => 'pip3 install flask==2.1.0',
  unless  => 'pip3 list | grep flask',
  path    => '/usr/bin',
}
