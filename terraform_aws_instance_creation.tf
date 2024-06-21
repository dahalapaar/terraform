terraform {
        required_providers = {
                aws = {
                        source = "hasicorp/aws"
                        version = "~> 4.16"
}
}
version = ">= 1.2.0"
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
    