define profile::labmachine (
  $username,
  $password,
  $fullname,
  $email,
) {
  notify { "Creating Lab Machine $username for $fullname": }
  azure_vm_classic { "$username-idc1210":
    ensure            => 'running',
    cloud_service     => "$username-idc1210",
    deployment        => "$username-idc1210",
    endpoints         => [{'direct_server_return' => 'false', 'local_port' => '3389', 'name' => 'RDP UDP', 'protocol' => 'udp', 'public_port' => '3389'}, {'direct_server_return' => 'false', 'local_port' => '3389', 'name' => 'RDP TCP', 'protocol' => 'tcp', 'public_port' => '3389'}, {'direct_server_return' => 'false', 'local_port' => '5986', 'name' => 'WinRM', 'protocol' => 'tcp', 'public_port' => '5986'}],
    image             => 'a699494373c04fc0bc8f2bb1389d6106__Windows-Server-2012-R2-20160812-en.us-127GB.vhd',
    location          => 'South Central US',
    size              => 'Standard_DS1_v2',
    subnet            => 'default',
    virtual_network   => 'Group IDC IDC',
    user              => $user,
    password          => $password,
  }

}
