variable "project_id" {}

variable "region" {
  default = "asia-south1"
}

variable "zone" {
  default = "asia-south1-c"
}

variable "vm_name" {
  default = "dev-app-vm-01"
}

variable "machine_type" {
  default = "e2-medium"
}

variable "image" {
  default = "projects/debian-cloud/global/images/family/debian-12"
}

variable "disk_size_gb" {
  default = 50
}

variable "network" {
  default = "default"
}

variable "subnetwork" {
  default = "default"
}

variable "vm_service_account_email" {}

variable "tags" {
  type    = list(string)
  default = ["dev", "app", "ssh-allowed"]
}
