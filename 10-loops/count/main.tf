resource "aws_instance" "web" {
  count = length(var.name)
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"

  tags = {
    Name = var.name[count.index] # it gives same value as element(var.name , count.index)
  }
}


data "aws_ami" "example" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}

variable "name" {
  default = ["frontend" ,"mongodb","catalogue","redis","user","cart","mysql","shipping", "rabbitmq", "payment","dispatch"]

}