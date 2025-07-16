## Module from local path
module "sample" {
  source = "./sample-module"
  instance_type = var.instance_type
}

variable "instance_type" {
  default = "t3.micro"
}