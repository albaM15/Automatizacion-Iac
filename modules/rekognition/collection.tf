resource "aws_rekognition_collection" "asistencia" {
  collection_id = "${var.name_prefix}-collection"

  tags = {
    Name        = "AsistenciaBiometrica"
    Environment = var.environment
  }
}
