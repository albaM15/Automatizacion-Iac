output "bucket_id" {
  description = "ID (nombre) del bucket S3"
  value       = aws_s3_bucket.main.id
}

output "bucket_arn" {
  description = "ARN del bucket S3"
  value       = aws_s3_bucket.main.arn
}

output "bucket_domain_name" {
  description = "Nombre de dominio del bucket S3"
  value       = aws_s3_bucket.main.bucket_domain_name
}
