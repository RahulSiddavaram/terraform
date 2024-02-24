variable "ami_id" {
  type = string
  default = "ami-0f3c7d07486cad139" 
}

variable "instances" {
  type = map
  default = {
    mongodb = "t3.medium"
    mysql = "t3.medium"
    redis = "t2.micro"
    rabbitmq = "t2.micro"
    catalogue = "t2.micro"
    user = "t2.micro"
    cart = "t2.micro"
    shipping = "t2.micro"
    payment = "t2.micro"
    web = "t2.micro"
  } 
}

variable "zone_id" {
  default = "Z1037679PWH8BTMNZ3SR" 
}

variable "sg_name" {
  default = "allow-all" 
}

variable "domain" {
  default = "rahuldevops.cloud" 
}

variable "sg_cidr" {
  default = ["0.0.0.0/0"]
}


