locals {
  ami_image = {
    "eu-west-1" = "ami-00aa9d3df94c6c354"
    "us-west-1" = "ami-014d05e6b24240371"
  } 
}

resource "aws_instance" "main" {
  ami = local.ami_image[var.aws_region]
  instance_type = "t2.micro"
}