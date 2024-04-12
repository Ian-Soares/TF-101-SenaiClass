variable "ec2_instance_type" {
  type = string
  description = "EC2 Instance Type"
  default = "t2.micro"
}

variable "tags" {
  type = map(string)
  description = "Tags for EC2 instance"
  default = {}
}

variable "ec2_subnet_id" {}