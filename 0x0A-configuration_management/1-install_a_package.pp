# Using Puppet, install flask from pip3

package { 'python3-pip':
  ensure => installed,
}

exec { 'install flask and werkzeug':
  command => '/usr/bin/pip3 install flask==2.1.0 werkzeug<2.1',
  unless  => '/usr/bin/pip3 show flask | grep -q "^Version: 2.1.0"',
  path    => ['/usr/bin', '/bin'],
  require => Package['python3-pip'],
}
