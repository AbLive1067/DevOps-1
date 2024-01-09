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

variable "egress_rules" {
  description = "A list of rule names for egress"
  type        = list(string)
}

variable "sg_name" {
  type = string
}