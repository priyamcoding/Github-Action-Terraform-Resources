resource "aws_instance" "module-ins" {
  ami = local.amiValue
  instance_type = var.instance_type
  tags = {
    Name    = var.instanceName
    Owner   = "Priyam"
    Purpose = "Practice"
  }
}

locals {
  amiValue = "ami-05fa00d4c63e32376"
}