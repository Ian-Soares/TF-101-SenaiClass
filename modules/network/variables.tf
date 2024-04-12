variable "vpc_cidr_block" {
  type = string
  description = "VPC CIDR Block"
  default = "10.0.0.0/16"
}

variable "tags" {
  type = map(string)
  description = "Tags for the VPC"
  default = {
    Name = "main"
    Environment = "dev"
  }
}

variable "subnet_cidr_block" {
    default = "10.0.1.0/24"
}