output "test_server_ip" {
  value = aws_instance.test_server.public_ip
}

output "monitor_server_ip" {
  value = aws_instance.monitor_server.public_ip
}

output "ansible_inventory" {
  value = <<-EOT
[testserver]
test1 ansible_host=${aws_instance.test_server.public_ip} ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/test-env-key ansible_ssh_common_args='-o StrictHostKeyChecking=no'

[monitorserver]
monitor1 ansible_host=${aws_instance.monitor_server.public_ip} ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/test-env-key ansible_ssh_common_args='-o StrictHostKeyChecking=no'
EOT
}