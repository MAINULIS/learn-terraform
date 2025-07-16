resource "aws_instance" "web" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = var.instance_type == "" ? "t3.mirco" : var.instance_type

  tags = {
    name = "sample"
  }
}

variable "instance_type" {}

## Conditionals
# String --> ==, !=
# Numbers --> ==, !=, <, <=, > , >=, ==
# boolean (var.boolean ? true_value : false_value)

## conditional can also be used to determine whether to create a resource or not
resource "null_resource" "test" {
  count = var.input == "" ? 0 : 1
}
variable "input" {}