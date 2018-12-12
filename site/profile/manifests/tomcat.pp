class profile::tomcat {

  java::oracle { 'jdk8' :
      ensure  => 'present',
      version => '8',
      java_se => 'jdk',
  }
  
  tomcat::install { '/opt/tomcat':
    source_url => 'http://mirror.ventraip.net.au/apache/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz',
  }
  
  tomcat::instance { 'default':
    catalina_home => '/opt/tomcat',
  }

}
