terraform {
  required_version = "~> 1.12.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.31.0"
    }
  }
  backend "s3" {
    bucket         = "my-ews-baket-16"
    region         = "ap-south-1"
    key            = "vpc/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws-region
}
