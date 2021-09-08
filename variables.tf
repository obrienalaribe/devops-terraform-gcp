variable "region" {
  type        = string
  description = "GCP default region"
  default     = "europe-west2"
}
variable "project" {
  type = string
  description = "Name of the GCP project"
}

variable "service_account_impersonate_target" {
  type = string
  description = "Name of the GCP Service Account to Impersonate"
}