class profile::apache_terraform {
  
  class { 'apache':
    default_vhost => false,
  }
  
  apache::vhost { 'simon.example.com':
    port => '80',
    docroot => '/tmp',
  }

}
