resource "aws_instance" "conditions" {
    count = 10
    ami = var.ami_id #devops-practice us-east-1
    instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] =="mysql" ? "t3.medium" : "t2.micro"
    tags = {
        Name = var.instance_names[count.index]
    }
}

resource "aws_route53_record" "record" {
    count = 10
    zone_id = var.zone_id
    name    = "${var.instance_names[count.index]}.${var.domain}" #interpolation
    type    = "A"
    ttl     = 1
    records = [aws_instance.conditions[count.index].private_ip]
}

resource "aws_key_pair" "deployer" {
  key_name   = "devops-pub"
  public_key = file("${path.module}/devops1.pub")
  
}

resource "aws_instance" "conditions" {
    ami = var.ami_id #devops-practice us-east-1
    instance_type = "t2.micro"
    key_name = aws_key_pair.deployer.key_name
}
# mongodb cart catalogue user redis mysql rabbitmq shipping payment web