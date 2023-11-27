data "terraform_remote_state" "vpc" {
  backend = "local"  # Adjust the backend type based on your actual setup
  config = {
    path = "../Network Infra TF/terraform.tfstate"  # Path to the state file of the "Network Infra" module
  }
}