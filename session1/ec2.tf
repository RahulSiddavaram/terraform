# resource "aws_instance" "my-Wish-i-can-decide" {
#     ami = "ami-0f3c7d07486cad139" #devops-practice us-east-1
#     instance_type = "t2.micro"
# }

resource "aws_instance" "my-Wish-i-can-decide" {
    ami = var.ami_id #devops-practice us-east-1
    instance_type = var.instance_type
    security_groups = [aws_security_group.allow_all.name]

    # tags = {
        # Name = "MongoDB"
        # Enviromnent = "DEV"
        # Terraform = "true"
        # Project ="roboshop"
        # Component = "MongoDB"
    # }
    
    tags = var.tags
}