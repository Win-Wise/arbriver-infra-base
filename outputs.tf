output "arbriver_bucket" {
  value = aws_s3_bucket.arbriver_bucket
}

output "lambda_execution_role" {
  value = module.roles.lambda_execution_role
}

output "lambda_base_layer" {
  value = module.base.lambda_layer
}

output "statemachine_execution_role" {
  value = module.roles.statemachine_execution_role
}

#### SECRETSMANAGER SECRETS ####
output "betfair_app_key_secret" {
  value = aws_secretsmanager_secret.betfair_app_key
  sensitive = true
}

output "betfair_password_secret" {
  value = aws_secretsmanager_secret.betfair_password
  sensitive = true
}

output "uk_https_proxy_secret" {
  value = aws_secretsmanager_secret.uk_https_proxy_uri
  sensitive = true
}

output "zenrows_api_key_secret" {
  value = aws_secretsmanager_secret.zenrows_api_key
  sensitive = true
}

output "rapidapi_api_key_secret" {
  value = aws_secretsmanager_secret.rapidapi_api_key
  sensitive = true
}
