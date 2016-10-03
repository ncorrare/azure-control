class profile::azure {
  $users = hiera('users')
  create_resources(profile::labmachines, $users)
}
