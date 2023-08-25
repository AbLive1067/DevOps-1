variable "azs" {
  type    = list(string)
  # default = ["ap-south-1a", "ap-south-1b"]
}
variable "vpc_cidr_block" {
  # default = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  type    = list(string)
  # default = ["10.0.0.0/24", "10.0.1.0/24"]
}



variable "vpc_name"{}
variable "public_subnet_name"{}
variable "public_rt_name"{}
variable "sg_name" {}
variable "igw_name"{}