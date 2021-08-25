//provider "google" {
//  project = ""
//  region  = "europe-west2"
//  zone    = "europe-west2-c"
//}

// Generate random string
resource "random_string" "suffix" {
  length  = 5
  special = false
  upper   = false
}

locals {
  id = random_string.suffix.result
}

output "project_id" {
  value = local.id
}