variable "ami" {
  # default = "ami-0d951b011aa0b2c19"
}

variable "instance_type" {
  # default = "t2.micro"
}

variable "key_name" {
  # default = "key1"
}

variable "names" {
  type = set(string)
  # default = ["Jenkins-master", "build-slave", "Ansible"]
}

variable "root_volume_size" {}
variable "ebs_volume_size" {}
variable "ebs_device_name" {}
variable "root_volume_type" {}
variable "sg_id" {}
variable "public_subnet_ids" {}
