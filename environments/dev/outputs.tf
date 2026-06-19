# ── Cognito ───────────────────────────────────────────────────────────────────

output "cognito_user_pool_id" {
  description = "ID del Cognito User Pool"
  value       = module.cognito.user_pool_id
}

output "cognito_user_pool_arn" {
  description = "ARN del Cognito User Pool"
  value       = module.cognito.user_pool_arn
}

output "cognito_user_pool_endpoint" {
  description = "Endpoint del Cognito User Pool"
  value       = module.cognito.user_pool_endpoint
}

output "cognito_frontend_client_id" {
  description = "ID del cliente frontend del User Pool"
  value       = module.cognito.frontend_client_id
}

# ── Rekognition ───────────────────────────────────────────────────────────────

output "rekognition_collection_id" {
  description = "ID de la colección de Rekognition"
  value       = module.rekognition.collection_id
}

output "rekognition_collection_arn" {
  description = "ARN de la colección de Rekognition"
  value       = module.rekognition.collection_arn
}

# ── IAM credentials ───────────────────────────────────────────────────────────

output "rekognition_access_key_id" {
  description = "Access Key ID para el usuario de Rekognition (para n8n)"
  value       = module.iam.rekognition_access_key_id
  sensitive   = false
}

output "rekognition_secret_access_key" {
  description = "Secret Access Key para el usuario de Rekognition (para n8n)"
  value       = module.iam.rekognition_secret_access_key
  sensitive   = true
}

output "cognito_access_key_id" {
  description = "Access Key ID para el usuario de Cognito (para admin commands)"
  value       = module.iam.cognito_access_key_id
  sensitive   = false
}

output "cognito_secret_access_key" {
  description = "Secret Access Key para el usuario de Cognito (para admin commands)"
  value       = module.iam.cognito_secret_access_key
  sensitive   = true
}
