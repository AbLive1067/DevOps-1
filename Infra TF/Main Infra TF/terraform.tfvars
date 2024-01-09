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
eip_name                   = "Proj1_EIP"
nat_name                   = "Proj1_NAT"



#------------------Security group variables-------------------------
rules = {
  "manager_rule1"          = ["80", "80", "tcp", "description1", ["0.0.0.0/0"], []],
  "manager_rule2"          = ["81", "81", "tcp", "description2", ["0.0.0.0/0"], []],
  "manager_rule3"          = ["8080", "8080", "tcp", "description3", ["0.0.0.0/0"], []],
  "manager_rule4"          = ["443", "443", "tcp", "description4", ["0.0.0.0/0"], []],
  "manager_rule5"          = ["22", "22", "tcp", "description5", ["0.0.0.0/0"], []],
  "manager_egress_rule"    = ["0", "0", "-1", "description6", ["0.0.0.0/0"], []],
  "k8s_master_rule1"       = ["6643", "6643", "tcp", "description7", ["0.0.0.0/0"], []],
  "k8s_master_rule2"       = ["22", "22", "tcp", "description8", ["0.0.0.0/0"], []],
  "k8s_master_rule3"       = ["10257", "10257", "tcp", "description9", ["0.0.0.0/0"], []],
  "k8s_master_rule4"       = ["10259", "10259", "tcp", "description10", ["0.0.0.0/0"], []],
  "k8s_master_rule5"       = ["10250", "10250", "tcp", "description11", ["0.0.0.0/0"], []],
  "k8s_master_rule6"       = ["2379", "2380", "tcp", "description12", ["0.0.0.0/0"], []],
  "k8s_master_egress_rule" = ["0", "0", "-1", "description13", ["0.0.0.0/0"], []],
  "k8s_slave_rule1"        = ["10250", "10250", "tcp", "description14", ["0.0.0.0/0"], []],
  "k8s_slave_rule2"        = ["30000", "32767", "tcp", "description15", ["0.0.0.0/0"], []],
  "k8s_slave_egress_rule"  = ["0", "0", "-1", "description16", ["0.0.0.0/0"], []]
}

mana_name             = "manager_security_group"
mana_description      = "Manager security group"
mana_sg_tag_name      = "Manager SG"
manager_ingress_rules = ["manager_rule1", "manager_rule2", "manager_rule3", "manager_rule4", "manager_rule5"]
manager_egress_rules  = ["manager_egress_rule"]

mast_name                = "k8s_master_sg"
mast_description         = "K8s Master security group"
mast_sg_tag_name         = "K8s Master SG"
k8s_master_ingress_rules = ["k8s_master_rule1", "k8s_master_rule2", "k8s_master_rule3", "k8s_master_rule4", "k8s_master_rule5", "k8s_master_rule6"]
k8s_master_egress_rules  = ["k8s_master_egress_rule"]

slav_name               = "k8s_slave_sg"
slav_description        = "K8s Slave security group"
slav_sg_tag_name        = "K8s Slave SG"
k8s_slave_ingress_rules = ["k8s_slave_rule1", "k8s_slave_rule2"]
k8s_slave_egress_rules  = ["k8s_slave_egress_rule"]