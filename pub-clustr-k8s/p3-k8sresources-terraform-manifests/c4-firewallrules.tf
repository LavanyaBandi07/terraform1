resource "google_compute_firewall" "fw_ssh" {
  name = "${local.name}-fw-rule-ssh"
  allow {
    ports    = ["22"]
    protocol = "tcp"

  }
  direction     = "INGRESS"
  network       = google_compute_network.myvpc.id
  priority      = 1000
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh-tag"]

}