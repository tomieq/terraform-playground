terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "<= 4.56.0"
    }
  }
  required_version = ">= 1.1.3"
}

// provider configured
provider "aws" {
  region = "eu-west-2"
}
