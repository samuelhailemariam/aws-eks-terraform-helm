
terraform {
  required_version = "~> 0.14.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.31.0"
    }
  }
  backend "s3" {
    region = "us-west-2"
    key    = "eksterraformstatefile"
    bucket = "walabs-shewit-terraformstate-storage"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
