class profile::azure {
  $users = hiera('users')
  #  $users.each | Hash $machine | {
  #  create_resources(profile::labmachine, $machine)
  #}
}
