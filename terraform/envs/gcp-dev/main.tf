provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "vm" {
  source = "../../modules/gcp_vm"

  project_id = var.project_id
  region     = var.region
  zone       = var.zone

  name         = "vm-dev-nouha"
  machine_type = "e2-medium"

  public_ip = false

  labels = {
    env   = "dev"
    owner = "nouha"
  }
}

module "app_bucket" {
  source     = "../../modules/gcp_bucket"
  name       = "app-${var.project_id}-dev"
  location   = var.region
  versioning = true
}
