variable "region" {}
variable "profile" {}

#------------------VPC variables-------------------------
variable "azs" {}
variable "vpc_cidr_block" {}
variable "public_subnet_cidr_blocks" {}
variable "private_subnet_cidr_blocks" {}
variable "vpc_name" {}
variable "public_subnet_name" {}
variable "private_subnet_name" {}
variable "public_rt_name" {}
variable "igw_name" {}
variable "eip_name" {}
variable "nat_name" {}


#------------------manager sg variables-------------------------
variable "rules" {
  description = "A map of rule names to their properties"
  type        = map(list(any))
}
variable "mana_name" {
  description = "A name of Manager Security group"
  type        = string
}
variable "mana_description" {
  description = "A description of Manager security group"
  type        = string
}
variable "mana_sg_tag_name" {
  description = "A tag name for Manager security group"
  type        = string
}
variable "manager_ingress_rules" {
  description = "A list of rule names for ingress for Manager sg"
  type        = list(string)
}
variable "manager_egress_rules" {
  description = "A list of rule names for egress for Manager sg"
  type        = list(string)
}


#------------------k8s master sg variables-------------------------
variable "mast_name" {
  description = "A name of K8s Master Security group"
  type        = string
}
variable "mast_description" {
  description = "A description of K8s Master security group"
  type        = string
}
variable "mast_sg_tag_name" {
  description = "A tag name for K8s Master security group"
  type        = string
}
variable "k8s_master_ingress_rules" {
  description = "A list of rule names for ingress for K8s Master sg"
  type        = list(string)
}
variable "k8s_master_egress_rules" {
  description = "A list of rule names for egress for K8s Master sg"
  type        = list(string)
}


#------------------k8s slave sg variables-------------------------
variable "slav_name" {
  description = "A name of K8s Slave Security group"
  type        = string
}
variable "slav_description" {
  description = "A description of K8s Slave security group"
  type        = string
}
variable "slav_sg_tag_name" {
  description = "A tag name for K8s Slave security group"
  type        = string
}
variable "k8s_slave_ingress_rules" {
  description = "A list of rule names for ingress for K8s Slave sg"
  type        = list(string)
}
variable "k8s_slave_egress_rules" {
  description = "A list of rule names for egress for K8s Slave sg"
  type        = list(string)
}