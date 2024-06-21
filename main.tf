terraform {
        required_providers {
                aws = {
                        source = "hashicorp/aws"
                        version = "~> 4.16"
}
}
required_version = ">= 1.2.0"
}

provider "aws" {
        region = "us-east-1"
}

resource "aws_instance" "my_ec2_instance" {
        ami = "ami-04b70fa74e45c3917"
        instance_type = "t2.micro"
        tags = {
                name = "terraform-ec2-with-terraform"
}
}

# AWS S3 Bucket Creation
resource "aws_s3_bucket" "my_s3_bucket" {
        bucket = "terraform_bucket7"
        tags = {
                Name = "terraform_bucket7"
                Environment = "Dev"
}
}

# See the public IP of an instance
output "ec2_public_ips" {
        value = aws_instance.my_ec2_instance.public_ip
}   