terraform {
  backend "remote" {
    organization = "obrien-alaribe"

    workspaces {
      name = "devops-terraform-gcp"
    }
  }
}