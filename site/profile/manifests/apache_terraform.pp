class profile::apache_terraform {
  
  class { 'apache':
    docroot => '/tmp',
  }

}
