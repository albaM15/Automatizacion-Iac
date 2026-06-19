output "rekognition_access_key_id" {
  description = "Access Key ID para el usuario de Rekognition"
  value       = aws_iam_access_key.rekognition.id
  sensitive   = false
}

output "rekognition_secret_access_key" {
  description = "Secret Access Key para el usuario de Rekognition"
  value       = aws_iam_access_key.rekognition.secret
  sensitive   = true
}

output "cognito_access_key_id" {
  description = "Access Key ID para el usuario de Cognito"
  value       = aws_iam_access_key.cognito.id
  sensitive   = false
}

output "cognito_secret_access_key" {
  description = "Secret Access Key para el usuario de Cognito"
  value       = aws_iam_access_key.cognito.secret
  sensitive   = true
}
