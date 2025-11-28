terraform {
  required_version = ">= 1.4.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

  backend "gcs" {
    bucket = "tfstate-my-gcp-terraform" # <-- REPLACE with your bucket
    prefix = "envs/dev"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "vm" {
  source = "../../modules/compute-vm"

  name                  = var.vm_name
  machine_type          = var.machine_type
  zone                  = var.zone
  image                 = var.image
  disk_size_gb          = var.disk_size_gb
  network               = var.network
  subnetwork            = var.subnetwork
  service_account_email = var.vm_service_account_email
  tags                  = var.tags
}
