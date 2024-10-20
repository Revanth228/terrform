resource "aws_instance" "expense" {
    for_each = var.instance_names
    ami= data.aws_ami.AMI_Info.id
    vpc_security_group_ids=["sg-08f6db2b459db9f1c"]
    instance_type = each.value
    tags = merge(
     var.commontags,
     {
          Name= each.key
          Module= each.key
     }
    )
    
  
}



#