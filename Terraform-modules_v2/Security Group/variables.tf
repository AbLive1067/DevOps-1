variable "name" {
  description = "The name of the security group."
}

variable "description" {
  description = "The description of the security group."
}

variable "vpc_id" {
  type = string
}


variable "rules" {
  description = "A map of rule names to their properties"
  type        = map(list(string))
}

variable "ingress_rules" {
  description = "A list of rule names for ingress"
  type        = list(string)
}

variable "ingress_cidr_blocks" {
  description = "A list of cidr blocks for ingress"
  type = list(string)
}

variable "ingress_security_groups" {
  description = "A list of security group ids for ingress"
}

variable "egress_rules" {
  description = "A list of rule names for egress"
  type        = list(string)
}

variable "egress_cidr_blocks" {
  description = "A list of cidr blocks for egress"
  type = list(string)
}

variable "egress_security_groups" {
  description = "A list of security group ids for egress"
}
variable "sg_name" {
  type = string
}