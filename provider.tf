terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}



# Configuring aws Provider
provider "aws" {
  region = "eu-central-1"
  shared_credentials_files = ["C:/Users/suraj/.aws/credentials"]
  
}
