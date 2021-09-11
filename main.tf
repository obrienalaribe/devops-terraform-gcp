
module "project-bootstrap" {
  source          = "terraform-google-modules/project-factory/google//modules/fabric-project"
  version         = "~> 10.1.1"
  billing_account = var.billing_account_id
  name            = "org-bootstrap"
  parent          = "folders/${var.folder_id}"
  prefix          = "mv"
}


