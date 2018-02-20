class nginx::service(
  String $service_name = $::nginx::service_name,
  String $ensure = $::nginx::service_ensure,
  String $pattern = $::nginx::service_pattern,
  Boolean $enable = $::nginx::service_enable,
  Boolean $hasstatus = $::nginx::service_hasstatus,
  Boolean $hasrestart = $::nginx::service_hasrestart,
  String $docroot = $::nginx::params::docroot,){
  service { 'nginx_service':
    ensure => $ensure,
    name => $service_name,
    enable => $enable,
    hasstatus => $hasstatus,
    hasrestart => $hasrestart,
    pattern => $pattern,
  }
}
