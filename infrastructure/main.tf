terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
  region = var.aws_region
}


resource "aws_key_pair" "basion_key_pair" {
  key_name   = var.basion_key_pair_name
  public_key = file(var.basion_key_pair_public_key)  # The public key to associate with the EC2 instance
}

resource "aws_instance" "bastion_instance" {
  ami           = var.basion_ami_id
  instance_type = var.basion_instance_type
  subnet_id     = var.public_subnet_id

  key_name = aws_key_pair.basion_key_pair.key_name

  vpc_security_group_ids = [aws_security_group.bastion_sg.id]

  tags = {
    Name = var.bastion_name
  }
}

resource "aws_security_group" "bastion_sg" {
  name        = "${var.bastion_name}-sg"
  description = "Security group for Bastion Host"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.bastion_name}-sg"
  }
}
