//
//locals {
//  id = random_string.suffix.result
//  bootstrap_project_name        = format("%s-%s", var.bootstrap_project_name, local.id)
//  main_project_name                 = format("%s-%s", var.main_project_name, local.id)
//}

provider "google" {
  alias   = "tokengen"
}
data "google_client_config" "default" {
  provider = google.tokengen
}

data "google_service_account_access_token" "sa" {
  provider               = google.tokengen
  target_service_account = var.service_account_impersonate_target
  lifetime               = "600s"
scopes = [
    "https://www.googleapis.com/auth/cloud-platform",
  ]
}
/******************************************
  GA Provider configuration
 *****************************************/
//provider "google" {
//  access_token = data.google_service_account_access_token.sa.access_token
//  project      = var.project
//}
///******************************************
//  Beta Provider configuration
// *****************************************/
//provider "google-beta" {
//  access_token = data.google_service_account_access_token.sa.access_token
//  project      = var.project
//}
//resource "google_storage_bucket" "test" {
//  name     = "sa-impersonation-demo"
//  location = var.region
//}