resource "null_resource" "dummy" {
  count = 10
}

provider "aws" {}

variable "instances" {
  default = ["frontend","catalogue" ]
}
resource "aws_instance" "web" {
  count = length(var.instances)
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"

  tags = {
    Name = var.instances[count.index]
  }
}