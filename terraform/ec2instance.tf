terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.48.0"
    }
  }
  backend "s3" {
    bucket = "terraform1-backup"
    key    = "ec2"
    region = "ap-south-1"
  }
}
provider "aws" {
  region  = "ap-south-1"
}


resource "aws_instance" "app_server" {
  ami           = "ami-07ffb2f4d65357b42"
  instance_type = "t2.micro"

  tags = {
    Name = "AppServer2"
  }
}
