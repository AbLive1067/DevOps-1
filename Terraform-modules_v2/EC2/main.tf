resource "aws_instance" "Instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  
  subnet_id           = var.public_subnet_ids[0]
  vpc_security_group_ids = [var.sg_id]
  for_each = var.names
  tags={
    Name = each.key
  }

  root_block_device {
    volume_size = var.root_volume_size #30
    volume_type = var.root_volume_type #"gp2" 
  }

  ebs_block_device {
    device_name = var.ebs_device_name #"/dev/sdf"
    volume_size = var.ebs_volume_size #20
    delete_on_termination = true
  }
}