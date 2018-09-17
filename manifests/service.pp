class ssh::service (
 String $service_name = $::ssh::service_name,
)

{
  service { 'ssh': 
    ensure     => 'running',
    enable     => 'true',
    name       => "${service_name}",
    hasstatus  => 'true',
    hasrestart => 'true',

  }
}
