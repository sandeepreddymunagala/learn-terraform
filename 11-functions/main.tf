variable "class" {
  default = "hello"
}
output "class" {
  value = var.class
}
output "upper" {
  value = upper(var.class)
}
