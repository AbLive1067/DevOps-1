locals {
  region  = var.region
  profile = var.profile
}




module "ec2" {
  source            = "../../Terraform-modules_v2/EC2"
  ami               = var.ami
  instance_type     = var.instance_type
  key_name          = var.key_name
  public_subnet_ids = data.terraform_remote_state.vpc.outputs.public_subnet_ids
  sg_id             = module.sg.sg_id
  root_volume_size  = var.root_volume_size
  root_volume_type  = var.root_volume_type
  ebs_volume_size   = var.ebs_volume_size
  ebs_device_name   = var.ebs_device_name
  names             = toset(var.ec2_names) # Example instance names
} 

module "sg" {
  source = "../../Terraform-modules_v2/Security Group"
  name = var.sg_name
  description = var.sg_description
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
  ingress_ports = var.ingress_ports
  egress_ports = var.egress_ports
  cidr_blocks = var.sg_cidr_blocks
  security_group_list = var.security_group_list


}