terraform {
  cloud {
    organization = "arbriver"

    workspaces {
      name = "arbriver-infra-base"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
  }
  required_version = ">= 1.1.0"
}

provider "aws" {
  region = "us-east-1"
}

module "base"{
  source = "./lambda-base"
}

module "roles"{
  source = "./roles"
}