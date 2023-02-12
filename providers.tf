terraform {
    required_version = ">=0.13.1"
    required_providers {
      aws = ">=4.54.0"
      local = ">=2.3.0"
    }
    backend "s3" {
      bucket = "bucket-poc-terraform"
      key = "terraform.tfstate"
      region = "us-east-1"
    }
}

provider "aws" {
  region = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
}