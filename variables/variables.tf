variable "ami_id" {
  type = string
  default = "ami-0f3c7d07486cad139" #this is the default value
}

variable "instance_type" {
#   type = string
  default = "t2.micro"
}

variable "sg_name" {
#   type = string
  default = "allow-all"
}

variable "sg_cidr" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "tags" {
  type = map
  default = {
    Name = "MongoDB"
    Enviromnent = "DEV"
    Terraform = "true"
    Project ="roboshop"
    Component = "MongoDB"
  }
}