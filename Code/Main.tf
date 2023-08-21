terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  backend "s3" {
    region = "eu-west-1"
    bucket = var.bucket
    key    = var.key
  }
}

provider "aws" {
  region = "eu-west-1"
}