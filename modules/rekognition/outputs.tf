output "collection_id" {
  description = "ID de la colección de Rekognition"
  value       = aws_rekognition_collection.asistencia.collection_id
}

output "collection_arn" {
  description = "ARN de la colección de Rekognition"
  value       = aws_rekognition_collection.asistencia.arn
}
