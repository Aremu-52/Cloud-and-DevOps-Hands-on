output "control_node_public_ip" {
  description = "Public IP of the Control Node (Ansible)"
  value       = aws_instance.control_node.public_ip
}

output "managed_node_public_ip" {
  description = "Public IP of the Managed Node (App server)"
  value       = aws_instance.managed_node.public_ip
}

output "control_node_ssh" {
  description = "SSH command for Control Node"
  value       = "ssh -i your-key.pem ubuntu@${aws_instance.control_node.public_ip}"
}

output "managed_node_ssh" {
  description = "SSH command for Managed Node"
  value       = "ssh -i your-key.pem ubuntu@${aws_instance.managed_node.public_ip}"
}
