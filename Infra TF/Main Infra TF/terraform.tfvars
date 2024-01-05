region  = "ap-south-1"
profile = "abhishek_dhondge"

#------------------VPC variables-------------------------
azs                        = ["ap-south-1a", "ap-south-1b"]
vpc_cidr_block             = "10.0.0.0/16"
public_subnet_cidr_blocks  = ["10.0.0.0/24", "10.0.1.0/24"]
private_subnet_cidr_blocks = ["10.0.2.0/24", "10.0.3.0/24"]
vpc_name                   = "Project-1"
public_subnet_name         = "Pub"
private_subnet_name        = "Pvt"
public_rt_name             = "Public-RT-1"
igw_name                   = "IGW_Proj-1"
eip_name = "Proj1_EIP"
nat_name = "Proj1_NAT"



