# Using Puppet to install flask from pip3

exec { 'install-flask':
  command => 'pip3 install flask==2.1.0',
  path    => 'pip3 list | grep flask',
  unless  => 'pip3 list | grep flask',
}
