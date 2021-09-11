terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "obrien-alaribe"

    workspaces {
      name = "devops-terraform-gcp"
    }
  }
}
