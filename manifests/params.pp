class ssh::params {
  case $facts['os']['family'] {
    'Debian': {
       $package = 'openssh-server'
       $service = 'ssh'
    }
    'RedHat': {
       $package = 'openssh-server'
       $service = 'sshd'
    }
    default: {
       fail("${facts['operatingsystem']} is not supported!!")
    }
  }
}
