region  = "ap-south-1"
profile = "abhishek_dhondge"




#------------------EC2 variables-------------------------
ami              = "ami-0f5ee92e2d63afc18"
instance_type    = "t2.micro"
key_name         = "key1"
ec2_names            = ["Jenkins-master", "build-slave", "Ansible"]
root_volume_size = 30
root_volume_type = "gp2"
ebs_volume_size  = 20
ebs_device_name  = "/dev/sdf"


#------------------Security Group variables-------------------------
sg_name = "SSH_Devops"
sg_description = "To SSH Devops instances"
ingress_ports = [22]
egress_ports = [22]
sg_cidr_blocks = ["0.0.0.0/0"]
security_group_list = [""]