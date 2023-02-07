variable "region" {
default = "us-east-1"
}

variable "instance_count_needed" {
  default = "true"
}

variable "instance_count" {
  default = 2
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "example" {
	ami = "ami-0357d42faf6fa582f"
	instance_type = "t2.micro"
}


