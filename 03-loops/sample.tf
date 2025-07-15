resource "null_resource" "dummy" {
  count = 10
}

provider "aws" {}
resource "aws_instance" "web" {
  count = 2
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"

  tags = {
    Name = "web-${count.index +1}"
  }
}