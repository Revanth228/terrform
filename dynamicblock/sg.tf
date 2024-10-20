resource "aws_security_group" "allow_ports" {
    name= "allow_ports "
    description = "allow port access"

    tags = {
         name= "allow_ports "
         CreatedBy="Revanth"
    }
  #terraform block
     dynamic "ingress" {

        for_each = var.inbound_rules
        content {
          from_port        = ingress.value["port"]
            to_port          = ingress.value["port"]
            protocol         = ingress.value["protocol"]
            cidr_blocks      = ingress.value["allowed_cidr"]
        }
            
            
            }
     egress {
            from_port        = 0
            to_port          = 0
            protocol         = "-1"
            cidr_blocks      = ["0.0.0.0/0"]
          
            }

}