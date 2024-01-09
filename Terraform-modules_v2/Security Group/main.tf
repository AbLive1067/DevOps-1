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
      cidr_blocks      = length(var.rules[ingress.value]) > 4 ? var.rules[ingress.value][4] : []
      security_groups  = length(var.rules[ingress.value]) > 5 ? var.rules[ingress.value][5] : []
    }
  }

  dynamic "egress" {
    for_each = var.egress_rules
    content {
      from_port        = var.rules[egress.value][0]
      to_port          = var.rules[egress.value][1]
      protocol         = var.rules[egress.value][2]
      description      = var.rules[egress.value][3]
      cidr_blocks      = length(var.rules[egress.value]) > 4 ? var.rules[egress.value][4] : []
      security_groups  = length(var.rules[egress.value]) > 5 ? var.rules[egress.value][5] : []
    }
  }
  tags = {
    Name = var.sg_name
  }
  
}
