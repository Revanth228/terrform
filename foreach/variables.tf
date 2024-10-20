variable "instance_names" {
  type= map
  default= {
    db= "t3.small"
    backend="t3.micro"
    frontend="t3.micro"

  }
}

variable "commontags" {
    type = map
    default = {
        Project="expense"
        Terraform=true
    }
  
}

#r53 varaibles
variable "zone_id" {

  default = "Z01827032XHGZ2ZUO1RKQ"
}

variable "domain_name" {
    default = "daws78s-rev.online"
  
}