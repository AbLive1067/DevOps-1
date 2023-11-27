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
}

