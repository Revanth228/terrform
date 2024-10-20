resource "aws_instance" "expense" {
     count= length(var.instance_names)
    ami= var.Image_id
    vpc_security_group_ids=[aws_security_group.allow_ssh.id]
    instance_type = var.instance_names[count.index] == "db"? "t3.small":"t3.micro"
    tags = merge(
     var.commontags,
     {
          Name= var.instance_names[count.index]
          Module= var.instance_names[count.index]
     }
    )
    
  
}



#resource <resource-type> <resource-name>
resource "aws_security_group" "allow_ssh" {
    name= var.sg_name
    description =  var.sg_description

    tags = {
         name= "allow_ssh "
         CreatedBy="Revanth"
    }

     ingress {
            from_port        = var.ssh_port
            to_port          = var.ssh_port
            protocol         = var.protocol
            cidr_blocks      = var.cidr_blocks
            
            }
     egress {
            from_port        = 0
            to_port          = 0
            protocol         = "-1"
            cidr_blocks      = var.cidr_blocks
          
            }

}

