variable "region" {}
variable "profile" {}

#------------------EC2 variables-------------------------
variable "ami" {}
variable "instance_type" {}
variable "key_name" {}
variable "ec2_names" {}
variable "root_volume_size" {}
variable "root_volume_type" {}
variable "ebs_device_name" {}
variable "ebs_volume_size" {}


#------------------Security Group variables-------------------------

variable "sg_name" {}
variable "sg_description" {}
variable "ingress_ports" {}
variable "egress_ports" {}
variable "sg_cidr_blocks" {}
variable "security_group_list" {}
