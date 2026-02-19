provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "vm" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  labels = var.labels

  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/family/ubuntu-2204-lts"
      size  = 20
    }
  }

  network_interface {
    network = "default"

    dynamic "access_config" {
      for_each = var.public_ip ? [1] : []
      content {}
    }
  }
}
