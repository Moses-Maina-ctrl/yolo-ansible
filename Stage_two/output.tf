output "instance_publice_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.app.public_ip
}