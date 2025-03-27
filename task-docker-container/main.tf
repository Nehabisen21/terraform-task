terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Creating EC2 instance

resource "aws_instance" "Bankapp" {
  ami                         = "ami-084568db4383264d4"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.deployer.key_name
  associate_public_ip_address = "true"
  vpc_security_group_ids      = ["sg-0198269a7efa5127d"]
  subnet_id                   = "subnet-0aa7dc87e107f8633"
  user_data                   = file("/home/ubuntu/init.sh")
  tags = {
    Name = "Nginx"
  }
}
