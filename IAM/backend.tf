terraform {
     backend "s3" {
    bucket         = "sandbox-iac-remote-state"
    key            = "#{aws.beautest.region}/beautest/backend.tfstate"
    region         = "#{aws.beautest.region}"
    dynamodb_table = "sandbox-iac-state-locking"
    profile        = "#{aws.beautest.profile}"
  }
 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.90.1"
    }
  }
}