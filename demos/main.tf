terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">=1.3.6"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-03d3eec31be6ef6f9"
  instance_type = "t2.micro"

  tags = {
    "Name" = "exampleappserverinstance"
  }
}