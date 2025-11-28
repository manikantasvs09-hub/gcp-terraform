variable "name" {}
variable "machine_type" { default = "e2-medium" }
variable "zone" {}
variable "image" { default = "projects/debian-cloud/global/images/family/debian-12" }
variable "disk_size_gb" { default = 50 }
variable "network" {}
variable "subnetwork" {}
variable "service_account_email" {}
variable "tags" {
  type    = list(string)
  default = []
}
