variable "zenrows_api_key" {
  type = string
  description = "the api key for using the zenrows proxy"
  sensitive = true
}

variable "rapidapi_api_key" {
  type = string
  description = "the api key for using the rapidapi service"
  sensitive = true
}

variable "betfair_app_key" {
  type = string
  description = "the api key for using the betfair service"
  sensitive = true
}

variable "betfair_password" {
  type = string
  description = "the betfair password"
  sensitive = true
}

variable "uk_https_proxy_uri" {
  type = string
  description = "uri for uk proxy"
  sensitive = true
}
