provider "google" {
  project = "maximal-centaur-447108-u6"
  region  = "us-central1"
}

resource "google_compute_instance" "gcp-practice-vm" {
  name         = "gcp-practice-vm"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-12-bookworm-v20250212"
    }
  }

  network_interface {
    network = "default"
    access_config {}  # Enables external IP
  }
}
