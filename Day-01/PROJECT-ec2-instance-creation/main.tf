provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-07ff62358b87c7116"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-07ed73d8c5ebe012d"
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.example.public_ip

