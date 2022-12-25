terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.48.0"
    }
  }
}
provider "aws" {
  region  = "ap-south-1"
}


# remote_state {
#   backend = "s3"
#   generate = {
#     path      = "backup.tf"
#     if_exists = "overwrite_terraform"
#   }
#   config = {
#     key = "ec2ins/instance.tfstate"
#     bucket = "terraform1-backup"
#     region = "ap-south-1"
#   }
# }

resource "aws_instance" "app_server" {
  ami           = "ami-07ffb2f4d65357b42"
  instance_type = "t2.micro"

  tags = {
    Name = "AppServer1"
  }
}
