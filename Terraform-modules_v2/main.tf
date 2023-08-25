locals {
  region  = var.region
  profile = var.profile
}


module "vpc" {
  source = "./VPC"
  # Pass variables to the module
  vpc_cidr_block            = var.vpc_cidr_block
  public_subnet_cidr_blocks = var.public_subnet_cidr_blocks
  azs                       = var.azs
  vpc_name                  = var.vpc_name
  public_subnet_name        = var.public_subnet_name
  igw_name                  = var.igw_name
  public_rt_name            = var.public_rt_name
  sg_name                   = var.sg_name
}

module "ec2" {
  source            = "./EC2"
  ami               = var.ami
  instance_type     = var.instance_type
  key_name          = var.key_name
  public_subnet_ids = module.vpc.public_subnet_ids
  sg_id             = module.vpc.sg_id
  root_volume_size  = var.root_volume_size
  root_volume_type  = var.root_volume_type
  ebs_volume_size   = var.ebs_volume_size
  ebs_device_name   = var.ebs_device_name
  names             = toset(var.names) # Example instance names
}