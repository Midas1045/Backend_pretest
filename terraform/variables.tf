########################################
# General
########################################
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "project" {
  description = "Project name used as a prefix for all resource names"
  type        = string
  default     = "myapp"
}

variable "environment" {
  description = "Deployment environment (e.g. dev, staging, prod)"
  type        = string
  default     = "dev"
}

########################################
# Networking
########################################
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones to use (at least 2 required for RDS subnet group)"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

########################################
# EC2
########################################
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.medium"
}

variable "key_pair_name" {
  description = "Name of an existing EC2 key pair for SSH access (leave empty to skip)"
  type        = string
  default     = "bank-backend-key"
}

variable "ssh_allowed_cidr" {
  description = "CIDR block allowed to SSH into the EC2 instance"
  type        = string
  default     = "0.0.0.0/0" # Restrict to your IP in production
}

########################################
# RDS
########################################
variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "Name of the initial MySQL database"
  type        = string
  default     = "appdb"
}

variable "db_username" {
  description = "Master username for the MySQL RDS instance"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Master password for the MySQL RDS instance"
  type        = string
  sensitive   = true
  # Do NOT set a default here — pass via terraform.tfvars or an environment variable
}
