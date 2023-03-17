resource "aws_instance" "instance_terraform_1" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.ec2_pemkey
  security_groups = [var.security_groups_name]
  tags = {
    name = var.tag_name
  }
}