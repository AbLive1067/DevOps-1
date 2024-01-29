resource "aws_security_group" "sg" {
  name        = var.name
  description = var.description
  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port        = var.rules[ingress.value][0]
      to_port          = var.rules[ingress.value][1]
      protocol         = var.rules[ingress.value][2]
      description      = var.rules[ingress.value][3]
      cidr_blocks      = var.ingress_cidr_blocks
      security_groups  = var.ingress_security_groups
    }
  }

  dynamic "egress" {
    for_each = var.egress_rules
    content {
      from_port        = var.rules[egress.value][0]
      to_port          = var.rules[egress.value][1]
      protocol         = var.rules[egress.value][2]
      description      = var.rules[egress.value][3]
      cidr_blocks      = var.egress_cidr_blocks
      security_groups  = var.egress_security_groups
    }
  }
  tags = {
    Name = var.sg_name
  }
  
}
