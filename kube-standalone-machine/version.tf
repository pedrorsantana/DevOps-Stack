#-----------------------------------------------------------------------------------------------
# Version management
#-----------------------------------------------------------------------------------------------
terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = ">= 3.0.0, < 4.0.0"
        }
    }
    required_version = ">= 1.0.0, < 2.0.0"    
}

provider "aws" {
  region = var.aws_region
  allowed_account_ids = [ "047492896873" ]
  profile = var.aws_profile

  access_key = var.aws_access_key
  secret_key = var.aws_secret_key

  default_tags {
    tags = {
        Environment = var.environment
        Terraform = "true"
    }
  }
}