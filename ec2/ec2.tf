
#resource <resource-type> <resource-name>
resource "aws_security_group" "allow_ssh" {
    name= "allow_ssh "
    description = "allow ssh access"

    tags = {
         name= "allow_ssh "
         CreatedBy="Revanth"
    }

     ingress {
            from_port        = 22
            to_port          = 22
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
            
            }
     egress {
            from_port        = 0
            to_port          = 0
            protocol         = "-1"
            cidr_blocks      = ["0.0.0.0/0"]
          
            }

}

resource "aws_instance" "db" {
    ami= "ami-09c813fb71547fc4f"
    vpc_security_group_ids=[aws_security_group.allow_ssh.id]
    instance_type = "t3.micro"
    tags = {
         name= "db" 
    }
    
  
}