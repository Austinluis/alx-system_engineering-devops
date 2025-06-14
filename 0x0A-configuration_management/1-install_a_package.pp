# Using Puppet to install flask from pip3

package { 'python3-pip':
  ensure => installed,
}

exec { 'install-flask':
  require => Package['python3-pip'],
  command => '/usr/bin/pip3 install flask==2.1.0',
  unless  => '/usr/bin/pip3 show flask | grep -q "^Version: 2.1.0"',
  path    => ['/usr/bin', '/bin'],
}
