module "amplify" {
  source      = "../amplify" 
  repository  = var.repository
  token       = var.token
  user_pool_id = module.cognito.user_pool_id
  user_pool_client_id = module.cognito.user_pool_client_id
  user_identity_pool_id = module.cognito.user_identity_pool_id
  aws_region = var.aws_region
}

module "cognito" {
  source = "../cognito"
}



