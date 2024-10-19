variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
  
}

variable "Image_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
  description = "RHEL9 image id"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
  description = "instancetype for this instance is t3.micro"
}

variable "commontags" {

    default = {
        Project= "Expense"
        Environment= "Dev"
        Terraform = true
    }
  
}

variable "sg_name" {
    default = "allow_ssh"
  
}

variable "sg_description" {
  default = "allow ssh access"
}

variable "ssh_port" {
    default = 22
  
}

variable "protocol" {
    default = "tcp"
  
}


variable "cidr_blocks" {
    type = list(string)  # it's option but better you can define the type 
    default = ["0.0.0.0/0"]
  
}