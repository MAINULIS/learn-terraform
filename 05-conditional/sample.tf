resource "aws_instance" "web" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = var.instance_type == "" ? "t3.mirco" : var.instance_type

  tags = {
    name = "sample"
  }
}

variable "instance_type" {}