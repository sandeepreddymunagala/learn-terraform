resource "aws_instance" "web" {
  for_each = var.microservices
  ami           = data.aws_ami.example.id
  instance_type = lookup(each.value, "instance_type" , "t3.micro" )

  tags = {
    Name = lookup(each.value, "name" , "example" )
  }
}

data "aws_ami" "example" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}

variable "microservices" {
  default = {
    frontend ={
      name = "frontend"
      instance_type = "t3.micro"
    }
    catalogue ={
      name = "catalogue"
      instance_type ="t3.nano"
  }
    mongodb ={
      name = "mongodb"

    }
    }
}