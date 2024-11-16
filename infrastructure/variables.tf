variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "bastion_ami_id" {
  description = "AMI ID for the Bastion Host"
  type        = string
}

variable "bastion_instance_type" {
  description = "EC2 instance type for the Bastion Host"
  type        = string
  default     = "t2.micro"
}

variable "bastion_key_pair_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "bastion_key_pair_public_key" {
  description = "Public SSH key to associate with the EC2 instance"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC where the Bastion Host will be created"
  type        = string
}

variable "public_subnet_id" {
  description = "ID of the public subnet where the Bastion Host will be created"
  type        = string
}

variable "bastion_name" {
  description = "Name tag for the Bastion Host"
  type        = string
  default     = "digitaltolk"
}
