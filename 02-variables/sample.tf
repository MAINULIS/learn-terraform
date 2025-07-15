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
