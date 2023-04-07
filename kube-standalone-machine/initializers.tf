#-----------------------------------------------------------------------------------------------
# AWS account configurations
#-----------------------------------------------------------------------------------------------
variable "aws_region" {
  description = "AWS provider region"
  type = string
}

variable "aws_account_id" {
  description = "AWS environment account ID"
  type = string
}

variable "aws_profile" {
  description = "Configured AWS profile to assume the role"
  type = string
}

variable "environment" {
  description = "Environment name"
  type = string
}