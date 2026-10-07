variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-1"
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "zeetafin"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "c7i-flex.large"
}

variable "key_name" {
  description = "Devops-key-eu-west-1"
  type        = string
}

variable "my_ip" {
  description = "Your public IP for SSH access (CIDR)"
  type        = string
}
