class timezone($zone='UTC') {
  package { 'tzdata':
    ensure => present,
  }

  file { '/etc/timezone':
    content => inline_template('<%= @zone + "\n" %>'),
  }

  case $::osfamily {
    'debian': {
      exec { 'reconfigure-tzdata':
        command     => '/usr/sbin/dpkg-reconfigure -f noninteractive tzdata',
        subscribe   => File['/etc/timezone'],
        require     => File['/etc/timezone'],
        refreshonly => true,
      }
    }
    'redhat': {
      file { '/etc/localtime':
        ensure  => 'present',
        target  => "/usr/share/zoneinfo/$zone",
        require => Package['tzdata'],
      }
    }
    default: {
      fail("Unsupported osfamily ${::osfamily}")
    }
  }
}
