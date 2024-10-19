resource "aws_instance" "db" {
    ami= var.Image_id
    instance_type = var.instance_name == "db"? "t3.small":"t3.micro"
    # tags = var.tags
    
  
}
