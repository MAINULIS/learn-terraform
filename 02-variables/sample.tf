# x1=abc in shell
# x1:abc in ansible
variable "x1" {
  default = "abc"
}

output "x1" {
  # variable var.x1 for the direct variable usage
  value = var.x1
}

output "x11" {
  # We can call variable with string by using ${}
  value = "Value of x1 is ${var.x1}"
}

## Data Types of Terraform
# String --> need to be given in double quotes
# Number --> no need of quote
# Boolean --> no need of quote

variable "string1" {
  default = "Hello World"
}

variable "number1" {
  default = 100.50
}
variable "boolean1" {
  # Terraform support only true or false
  default = true
}

## Variables types
# plain
# list
# map / dict

variable "plain" {
  default = "dnf"
}

variable "list" {
  default = ["ab", 32, true]
}

variable "map" {
  default = {
    course = "devOps"
    duration = 3.5
  }
}
# get the value
output "list_value1" {
  value = var.list[0]
}
output "map_name" {
  value = var.map["course"]
}
## get value from terraform.tfvars --> the value will be picked automatically
variable "x2" {}

output "x2" {
  value = "value of x2 is ${var.x2}"
}
## dev.tfvars or prod.tfvars --> value should be explicitly passed with -var-file variable_file_name(dev.tfvars/prod.tfvars) from cli
# value will provide dev.tfvars file
variable "x3" {}
output "x3" {
  value = "value of x3 dev is ${var.x3}"
}

# value will provide prod.tfvars file
variable "x3_env" {}
output "x3_env" {
  value = "value of x3_env is ${var.x3_env}"
}
## File name has to be different, but the file needs to be loaded automatically, then auto.tfvars
variable "x4" {}

output "x4" {
  value = "Value of x4 is ${var.x4}"
}