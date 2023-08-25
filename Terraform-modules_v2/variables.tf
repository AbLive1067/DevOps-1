variable "region" {}
variable "profile" {}

#------------------VPC variables-------------------------
variable "azs" {}
variable "vpc_cidr_block" {}
variable "public_subnet_cidr_blocks" {}
variable "vpc_name" {}
variable "public_subnet_name" {}
variable "public_rt_name" {}
variable "sg_name" {}
variable "igw_name" {}


#------------------EC2 variables-------------------------
variable "ami" {}
variable "instance_type" {}
variable "key_name" {}
variable "names" {}
variable "root_volume_size" {}
variable "root_volume_type" {}
variable "ebs_device_name" {}
variable "ebs_volume_size" {}