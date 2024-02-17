variable "ami_id" {
  default = "ami-0f3c7d07486cad139" 
}

variable "instance_names" {
    type = list
  default = ["mongodb", "cart", "catalogue", "user", "redis", "mysql", "rabbitmq",
  "shipping", "payment", "web"] 
}

variable "zone_id" {
  default = "Z1037679PWH8BTMNZ3SR" 
}

variable "domain" {
  default = "rahuldevops.cloud" 
}
