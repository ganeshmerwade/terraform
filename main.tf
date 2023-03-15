resource "aws_instance" "instance_terraform_1" {
  ami           = "ami-030cf0a1edb8636ab"
  instance_type = "t2.micro"
  key_name = "ganeshmerwade" 
  tags = {
    Name = "terraform_instance1"
  }
}
resource "" "name" {
  
}