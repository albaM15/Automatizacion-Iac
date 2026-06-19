variable "aws_region" {
  description = "AWS region where resources will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS shared config profile name"
  type        = string
  default     = null
}

variable "project_name" {
  description = "Base project name used in resource naming"
  type        = string
  default     = "school-narvaez"
}

variable "environment" {
  description = "Environment identifier (dev, prod)"
  type        = string
  default     = "ci"
}
