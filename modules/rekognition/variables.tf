variable "name_prefix" {
  description = "Prefix used for naming the Rekognition collection (e.g. school-narvaez-dev)"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, ci, prod)"
  type        = string
}
