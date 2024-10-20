locals {
  ami_id="ami-09c813fb71547fc4f"
  sg_id="sg-08f6db2b459db9f1c"
   instance_type = var.instance_name=="db"?  "t3.small" : "t3.micro"
  tags={
    Name="db"
  }
}