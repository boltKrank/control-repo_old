class profile::iis {

  iis_application_pool { 'minimal_site_app_pool':
    ensure                  => 'present',
    state                   => 'started',
    managed_pipeline_mode   => 'Integrated',
    managed_runtime_version => 'v4.0',
  } ->

  iis_site { 'minimal':
    ensure          => 'started',
    physicalpath    => 'c:\\inetpub\\minimal',
    applicationpool => 'minimal_site_app_pool',
    require         => File['minimal'],
  }

  file { 'minimal':
    ensure => 'directory',
    path   => 'c:\\inetpub\\minimal',
  }

  file { 'c:\\inetpub\\minimal\\index.html':
    ensure => file,
    content => "<html>\n<body>\nHello!\n</body>\n</html>",
  }


}
