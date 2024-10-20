resource "aws_instance" "db" {
    ami= "ami-09c813fb71547fc4f"
    vpc_security_group_ids=["sg-08f6db2b459db9f1c"]
    instance_type = "t3.micro"
    tags = {
         name= "db" 
    }
    
  
}