variable "class" {
  default = "hello"
}
output "class" {
  value = var.class
}
output "upper" {
  value = upper(var.class)
}


variable "subjects" {
  default = ["research methodology","secure software"]
}

output "subjects" {
  value = var.subjects[0]
}