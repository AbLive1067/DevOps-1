locals {
  region  = var.region
  profile = var.profile
}


module "vpc" {
  source = "../../Terraform-modules_v2/VPC"
  # Pass variables to the module
  vpc_cidr_block             = var.vpc_cidr_block
  public_subnet_cidr_blocks  = var.public_subnet_cidr_blocks
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
  azs                        = var.azs
  vpc_name                   = var.vpc_name
  public_subnet_name         = var.public_subnet_name
  private_subnet_name        = var.private_subnet_name
  igw_name                   = var.igw_name
  public_rt_name             = var.public_rt_name
  eip_name                   = var.eip_name
  nat_name                   = var.nat_name
}


module "manager_sg" {
  source = "../../Terraform-modules_v2/Security Group"

  name          = var.mana_name        #"Manager sg"
  description   = var.mana_description #"Manager security group"
  vpc_id        = module.vpc.vpc_id
  sg_name       = var.mana_sg_tag_name #"manager_sg"
  rules         = var.rules
  ingress_rules = var.manager_ingress_rules
  egress_rules  = var.manager_egress_rules
}

module "k8s_master_sg" {
  source = "../../Terraform-modules_v2/Security Group"

  name          = var.mast_name
  description   = var.mast_description
  vpc_id        = module.vpc.vpc_id
  sg_name       = var.mast_sg_tag_name
  rules         = var.rules
  ingress_rules = var.k8s_master_ingress_rules
  egress_rules  = var.k8s_master_egress_rules
}

module "k8s_slave_sg" {
  source = "../../Terraform-modules_v2/Security Group"

  name          = var.slav_name
  description   = var.slav_description
  vpc_id        = module.vpc.vpc_id
  sg_name       = var.slav_sg_tag_name
  rules         = var.rules
  ingress_rules = var.k8s_slave_ingress_rules
  egress_rules  = var.k8s_slave_egress_rules
}