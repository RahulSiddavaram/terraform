resource "aws_instance" "roboshop" {
    for_each = var.instances
    ami = var.ami_id 
    instance_type = each.value
    tags = {
        Name = each.key
    }
  
}
#if web give public ip or else give private ip
resource "aws_route53_record" "www" {
    for_each = aws_instance.roboshop
    zone_id = var.zone_id
    name    = "${each.key}.${var.domain}" #interpolation
    type    = "A"
    ttl     = 1
    records = [each.key == "web" ? each.value.public_ip : each.value.private_ip ]
}


output "aws_instance_info" {
    value = aws_instance.roboshop
}
