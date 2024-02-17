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

variable "domain" {
  default = "rahuldevops.cloud" 
}


variable "ingress" {
  type = list
  default = [
    {       description      = "Allowing all HTTPS 80 port traffic from public"
            from_port        = 80 
            to_port          = 80
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]

    },
    {       description      = "Allowing all HTTPS 443 port traffic from public"
            from_port        = 443 
            to_port          = 443
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]

    },
    {       description      = "Allowing all HTTPS 22 port traffic from public"
            from_port        = 22 
            to_port          = 22
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]

    }

  ] 
}


