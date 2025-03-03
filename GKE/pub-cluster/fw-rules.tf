# firewal rules
resource "google_compute_firewall" "fw_ssh" {
  name = "fw-allow-ssh"
  allow {
    ports    = ["22"]
    protocol = "tcp"

  }
  direction     = "INGRESS"
  network       = google_compute_network.myvpc.id
  priority      = 1001
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh-tag"]

}

# allowing access to 80
resource "google_compute_firewall" "fw_http" {
  name = "allow-http-80"
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  priority      = 1000
  network       = google_compute_network.myvpc.id
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["webserver-tag"]

}