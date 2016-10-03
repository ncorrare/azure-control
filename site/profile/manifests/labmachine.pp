define profile::labmachine (
  $username,
  $password,
  $fullname,
  $email,
) {
  notify { "Creating Lab Machine $username for $fullname": }
}
