

output "instance_id" {
  value = module.ec2.instance_ids
}

output "sg_id" {
  value = module.sg.sg_id
}

