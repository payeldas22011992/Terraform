provider "aws" {
  region = "us-east-1"
}

variable "ami_id" {
  description = "EC2 AMI ID"
  type        = string
}

variable "instance_type_value" {
  description = "EC2 AMI ID"
  type        = string
}

variable "subnet_id_value" {
  description = "EC2 AMI ID"
  type        = string
}

resource "aws_instance" "my-first-instance" {
    ami = var.ami_id
    instance_type = var.instance_type_value
    subnet_id = var.subnet_id_value
    associate_public_ip_address = true
}
