resource "aws_cognito_user_pool" "pool" {
  name = "congnito-sample-user-pool"
  tags = {
    Name = "cognito-sample-user-pool"
  }
}

resource "aws_cognito_user_pool_client" "client" {
  name          = "cognito-sample-user-pool-app-client"
  user_pool_id  = aws_cognito_user_pool.pool.id
}



resource "aws_cognito_identity_pool" "identity_pool" {
  identity_pool_name               = "cognito-sample-identity-pool"
  allow_unauthenticated_identities = false

  cognito_identity_providers {
    client_id               = aws_cognito_user_pool_client.client.id
    provider_name           = aws_cognito_user_pool.pool.endpoint
    server_side_token_check = false
  }
}
