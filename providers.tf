terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~>2.3.0"
    }
  }
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "obrien-alaribe"

    workspaces {
      name = "devops-terraform-gcp"
    }
  }
}
