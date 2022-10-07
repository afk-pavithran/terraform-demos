terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region = "us-east-1"
}

resource "aws_instance" "ec2demo" {
  ami = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
}