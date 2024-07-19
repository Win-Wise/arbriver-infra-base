#Betfair password secret
resource "aws_secretsmanager_secret" "betfair_password" {
  name = "betfair_login_password"
}

resource "aws_secretsmanager_secret_version" "betfair_password" {
  secret_id     = aws_secretsmanager_secret.betfair_password.id
  secret_string = var.betfair_password
}

# Betfair app key secret
resource "aws_secretsmanager_secret" "betfair_app_key" {
  name = "betfair_login_app_key"
}

resource "aws_secretsmanager_secret_version" "betfair_app_key" {
  secret_id     = aws_secretsmanager_secret.betfair_app_key.id
  secret_string = var.betfair_app_key
}

#Rapidapi api key secret
resource "aws_secretsmanager_secret" "rapidapi_api_key" {
  name = "rapidapi_api_key"
}

resource "aws_secretsmanager_secret_version" "rapidapi_api_key" {
  secret_id     = aws_secretsmanager_secret.rapidapi_api_key.id
  secret_string = var.rapidapi_api_key
}

#Zenrows api key secret
resource "aws_secretsmanager_secret" "zenrows_api_key" {
  name = "zenrows_api_key"
}

resource "aws_secretsmanager_secret_version" "zenrows_api_key" {
  secret_id     = aws_secretsmanager_secret.zenrows_api_key.id
  secret_string = var.zenrows_api_key
}

#UK Proxy secret
resource "aws_secretsmanager_secret" "uk_https_proxy_uri" {
  name = "uk_https_proxy_uri"
}

resource "aws_secretsmanager_secret_version" "uk_https_proxy_uri" {
  secret_id     = aws_secretsmanager_secret.uk_https_proxy_uri.id
  secret_string = var.uk_https_proxy_uri
}