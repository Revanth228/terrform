resource "aws_route53_record" "expense" {
    count=length(var.instance_names)
  zone_id = var.zone_id
  name    = var.instance_names[count.index]=="frontend"?  var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
#    name= local.record_name
  type    = "A"
  ttl     = 300
 records = var.instance_names[count.index]=="frontend"?  [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
#  record_value=local.record_value

#count and count.index will not work in locals so changing it back 

  #if records already exists 
  allow_overwrite = true
}