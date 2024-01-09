output "vpc_id" {
  value = aws_vpc.main.id
}
output "public_subnet_ids" {
  value = aws_subnet.public_subnet[*].id
}
output "private_subnet_ids" {
  value = aws_subnet.private_subnet[*].id
}
output "igw_id" {
  value = aws_internet_gateway.main.id
}
output "eip_ids" {
  value = aws_eip.public_eip[*].public_ip
}
output "allocation_id_ids" {
  value = aws_eip.public_eip[*].id
}
output "nat_gateway_ids" {
  value = aws_nat_gateway.public_subnet_nat_gateway[*].id
}
output "public_route_table_id" {
  value = aws_route_table.public_rt.id
}
output "private_route_table_ids" {
  value = aws_route_table.private_rt[*].id
}
output "public_subnet_route_association_ids" {
  value = aws_route_table_association.public_subnet_route_association[*].id
}
output "private_subnet_route_association_ids"{
  value = aws_route_table_association.private_subnet_route_association[*].id
}

