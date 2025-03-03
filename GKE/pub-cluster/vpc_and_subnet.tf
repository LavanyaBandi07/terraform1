## vpc in gcp
resource "google_compute_network" "myvpc" {
  name                    = "${local.name}-vpc1"
  auto_create_subnetworks = false
}

# subnet creation
resource "google_compute_subnetwork" "mysubnet" {
  name          = "${local.name}-${var.gcp_region}-mysub1"
  region        = var.gcp_region
  ip_cidr_range = "10.128.0.0/20"
  network       = google_compute_network.myvpc.id


}