terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket = "terraform-ci-cd-demo"
    key    = "state/terraform.tfstate"
    region = "eu-west-2"
    #dynamodb_table = "state-locking"
    use_lockfile = "true"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}