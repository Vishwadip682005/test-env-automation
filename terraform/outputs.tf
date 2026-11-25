output "test_server_ip" {
  value = aws_instance.test_server.public_ip
}

output "monitor_server_ip" {
  value = aws_instance.monitor_server.public_ip
}