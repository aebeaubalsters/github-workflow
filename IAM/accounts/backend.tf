terraform {
  backend "s3" {
    bucket               = "#{tofu.backendBucket}"
    key                  = "#{aws.region}/IAM/backend.tfstate"
    region               = "#{tofu.backendRegion}"
    dynamodb_table       = "#{tofu.dynamodbTable}"
    profile              = "#{aws.profile}"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.90.1"
    }
  }
}