variable "name_prefix" {
  description = "Prefix used for naming all S3 resources (e.g. school-narvaez-dev)"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, ci, prod)"
  type        = string
}
