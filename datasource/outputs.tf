output "ami_id" {
    value= data.aws_ami.AMI_ID.id
  
}

output "vpc_info" {
    value= data.aws_vpc.default_vpc
  
}