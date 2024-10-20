resource "aws_route53_record" "expense" {
   for_each = aws_instance.expense
  zone_id = var.zone_id
  name    = each.key=="frontend"?  var.domain_name : "${each.key}.${var.domain_name}"
#    name= local.record_name
  type    = "A"
  ttl     = 300
 records = each.key=="frontend"?  [each.value.public_ip] : [each.value.private_ip]
#  record_value=local.record_value

#count and count.index will not work in locals so changing it back 

  #if records already exists 
  allow_overwrite = true
}