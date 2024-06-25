output "user_pool_client_id" {
  value = aws_cognito_user_pool_client.client.id
}

output "user_pool_id" {
  value = aws_cognito_user_pool.pool.id
}

output "user_identity_pool_id" {
  value = aws_cognito_identity_pool.identity_pool.id
}