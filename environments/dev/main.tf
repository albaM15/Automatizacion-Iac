module "cognito" {
  source      = "../../modules/cognito"
  name_prefix = local.name_prefix
}

module "rekognition" {
  source      = "../../modules/rekognition"
  name_prefix = local.name_prefix
  environment = var.environment
}

module "iam" {
  source      = "../../modules/iam"
  name_prefix = local.name_prefix
}

module "storage" {
  source      = "../../modules/storage"
  name_prefix = local.name_prefix
  environment = var.environment
}