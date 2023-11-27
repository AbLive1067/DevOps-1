variable "name" {
  description = "The name of the security group."
}

variable "description" {
  description = "The description of the security group."
}

variable "vpc_id" {
  type = string
}

variable "ingress_ports" {
  description = "A list of ingress ports for the security group."
  type        = list(number)
}


variable "egress_ports" {
  description = "A list of egress ports for the security group."
  type        = list(number)
}

variable "cidr_blocks" {
  description = "CIDR blocks for ingress and egress rules."

}

variable "security_group_list" {
}