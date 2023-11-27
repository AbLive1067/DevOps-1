# modules/security_group/main.tf

resource "aws_security_group" "sg" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id

  ingress = [
    for port in var.ingress_ports : {
      from_port   = port
      to_port     = port
      protocol    = "tcp"
      cidr_blocks = var.cidr_blocks
      security_groups = var.security_group_list
      
    }
  ]

  egress = [
    for port in var.egress_ports : {
      from_port   = port
      to_port     = port
      protocol    = "tcp"
      cidr_blocks = var.cidr_blocks
      security_groups = var.security_group_list

    }
  ]

  tags = {
    Name = "${var.name}-Infra"
  }
}
