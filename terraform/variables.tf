variable "state_bucket" {
  type        = string
  description = "Bucket S3 with terraform state"
}

variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "project_name" {
  type        = string
  description = "Name of the project"
}

variable "tags" {
  type        = map(string)
  description = "Tags for resources"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
}

variable "ecr_repository_name" {
  type        = string
  description = "Name of the ECR repository"
}


