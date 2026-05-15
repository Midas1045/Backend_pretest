########################################
# VPC
########################################
output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = aws_subnet.private[*].id
}

########################################
# EC2
########################################
output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app.id
}

output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.app.public_ip
}

########################################
# RDS
########################################
output "rds_endpoint" {
  description = "Connection endpoint for the RDS MySQL instance"
  value       = aws_db_instance.mysql.endpoint
}

output "rds_port" {
  description = "Port of the RDS MySQL instance"
  value       = aws_db_instance.mysql.port
}

########################################
# ECR
########################################
output "ecr_repository_url" {
  description = "Full URI of the ECR repository"
  value       = aws_ecr_repository.app.repository_url
}

output "ecr_repository_name" {
  description = "Name of the ECR repository"
  value       = aws_ecr_repository.app.name
}
