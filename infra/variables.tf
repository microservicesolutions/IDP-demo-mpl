variable "project_id" {
  description = "GCP project ID."
  type        = string
}

variable "region" {
  description = "Region for regional modules."
  type        = string
  default     = "europe-west1"
}

variable "project_services" {
  description = "Config for module.project_services (YAML key 'project_services')."
  type        = any
}

variable "cloud_run" {
  description = "Config for module.cloud_run (YAML key 'cloud_run')."
  type        = any
}
