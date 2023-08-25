region  = "ap-south-1"
profile = "Terraform-devops1"

#------------------VPC variables-------------------------
azs                       = ["ap-south-1a", "ap-south-1b"]
vpc_cidr_block            = "10.0.0.0/16"
public_subnet_cidr_blocks = ["10.0.0.0/24", "10.0.1.0/24"]
vpc_name                  = "Project-2"
public_subnet_name        = "Pub"
igw_name                  = "IGW_Proj-2"
public_rt_name            = "Public-RT"
sg_name                   = "SSH_access_sg"


#------------------EC2 variables-------------------------
ami              = "ami-0f5ee92e2d63afc18"
instance_type    = "t2.micro"
key_name         = "key1"
names            = ["Jenkins-master", "build-slave", "Ansible"]
root_volume_size = 30
root_volume_type = "gp2"
ebs_volume_size  = 20
ebs_device_name  = "/dev/sdf"