terraform {
  # backend "s3" {
  #   bucket = "backend_store_tfstate"
  #   dynamodb_table = "state-lock"
  #   key = "global/mystatefile/proj1_state/terraform.tfstate"
  #   region = "ap-south-1"
  #   encrypt = true
  # }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }
}
provider "aws" {
  region  = var.region
  profile = var.profile #"Terraform-devops1"
}