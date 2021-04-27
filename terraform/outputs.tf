
# EC2 Instance # 1
#### 

output "instance_1_id" {
  description = "ID of the EC2 instance #1"
  value       = aws_instance.app_1.id
}

output "instance_1_public_ip" {
  description = "Public IP address of the EC2 instance #1"
  value       = aws_instance.app_1.public_ip
}

# EC2 Instance # 2
#### 

output "instance_2_id" {
  description = "ID of the EC2 instance #2"
  value       = aws_instance.app_2.id
}

output "instance_2_public_ip" {
  description = "Public IP address of the EC2 instance #2"
  value       = aws_instance.app_2.public_ip
}