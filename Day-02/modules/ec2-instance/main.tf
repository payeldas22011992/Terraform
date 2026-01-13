resource "aws_instance" "my-first-instance" {
    ami = var.ami_id
    instance_type = var.instance_type_value
    subnet_id = var.subnet_id_value
    associate_public_ip_address = true
}
