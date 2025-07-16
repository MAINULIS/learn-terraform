provider "aws" {}

variable "instances" {
  # this is safest way. if you change the order and then do terraform init it will show no changes
  default = {
    frontend = {
      instance_type = "t3.micro"
    }
    catalogue = {
      instance_type = "t3.small"
    }
  }
}
resource "aws_instance" "web" {
  for_each = var.instances
  ami           = "ami-09c813fb71547fc4f"
  instance_type = each.value["instance_type"]

  tags = {
    Name = each.key
  }
}