terraform {
  backend "local" {
    workspace_dir = "/Users/Administrator/Documents/EC2-resuable"
    path = "EC2-resuable/terraform.tfstate"
  }
}