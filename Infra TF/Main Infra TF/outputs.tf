
#------------------VPC Outputs-------------------------
output "vpc_id" {
  value = module.vpc.vpc_id
}
output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids[*]
}
output "igw_id" {
  value = module.vpc.igw_id
}
output "eip_ids" {
  value = module.vpc.eip_ids[*]
}
output "allocation_id_ids" {
  value = module.vpc.allocation_id_ids[*]
}
output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids[*]
}
output "nat_gateway_ids" {
  value = module.vpc.nat_gateway_ids[*]
}
output "public_route_table_id" {
  value = module.vpc.public_route_table_id
}
output "private_route_table_ids" {
  value = module.vpc.private_route_table_ids[*]
}
output "public_subnet_route_association_ids" {
  value = module.vpc.public_subnet_route_association_ids[*]
}
output "private_subnet_route_association_ids" {
  value = module.vpc.private_subnet_route_association_ids[*]
}


#------------------Security groups Outputs-------------------------

output "manager_sg_id" {
  value = module.manager_sg.sg_id
}
output "k8s_master_sg_id" {
  value = module.k8s_master_sg.sg_id
}
output "k8s_slave_sg_id" {
  value = module.k8s_slave_sg.sg_id
}