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

variable "instance_name" {
   default="db"  
}

