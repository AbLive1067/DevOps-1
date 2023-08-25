# terraform {
#   # backend "s3" {
#   #   bucket = "backend_store_tfstate"
#   #   dynamodb_table = "state-lock"
#   #   key = "global/mystatefile/proj1_state/terraform.tfstate"
#   #   region = "ap-south-1"
#   #   encrypt = true
#   # }
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "4.60.0"
#     }
#   }
# }
# provider "aws" {
#   region  = var.region
#   profile = "Terraform-devops1"
# }


#Locals
locals {
  public_subnet_count = length(var.public_subnet_cidr_blocks)
  azs_count           = length(var.azs)

}


# Create the VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}


#-------------------- Public subnets --------------
resource "aws_subnet" "public_subnet" {

  count                   = local.public_subnet_count
  cidr_block              = var.public_subnet_cidr_blocks[count.index]
  availability_zone       = element(var.azs, count.index)
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.public_subnet_name}_${count.index + 1}"
  }

}


#-------------------- Internet Gateway --------------------
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.igw_name
  }
}

#--------------------Route Tables And Subnet Association--------------------
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = var.public_rt_name
  }

}

# Public subnet route association
resource "aws_route_table_association" "public_subnet_route_association" {
  count          = local.public_subnet_count
  subnet_id      = aws_subnet.public_subnet[count.index].id
  route_table_id = aws_route_table.public_rt.id
}


# Securtiy groups for ssh
resource "aws_security_group" "ssh_sg" {
  name_prefix = "ssh_sg_access"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow SSH"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow SSH"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_name
  }
}