terraform {
  required_version = ">= 1.14.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 7.17.0, < 8.0.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 7.17.0, < 8.0.0"
    }
  }

  backend "local" {
    path = "./terraform.tfstate"
  }
}

module "project_services" {
  source = "git::https://github.com/VFGROUP-NSE-NDPE/dne-pe-terraform-modules.git//terraform/modules/project_services?ref=project_services-v1.0.3"

  project_id       = var.project_id
  project_services = var.project_services
}

module "cloud_run" {
  source = "git::https://github.com/VFGROUP-NSE-NDPE/dne-pe-terraform-modules.git//terraform/modules/cloud_run?ref=cloud_run-v1.1.2"

  project_id = var.project_id
  region     = var.region
  cloud_run  = var.cloud_run

  depends_on = [module.project_services]
}
