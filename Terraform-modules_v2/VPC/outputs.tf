output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public_subnet[*].id
}

output "public_route_table_id" {
  value = aws_route_table.public_rt.id
}

output "public_subnet_route_association_ids" {
  value = aws_route_table_association.public_subnet_route_association[*].id
}

output "sg_id" {
  value = aws_security_group.ssh_sg.id
  
}