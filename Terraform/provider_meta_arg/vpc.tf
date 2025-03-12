## vpc in gcp
resource "google_compute_network" "myvpc" {
  name =  "vpc1"
  project = "maximal-centaur-447108-u6"
  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "mysubnet1" {
    name = "mysub1"
    provider = google.us-central1
    ip_cidr_range = "10.128.0.0/20"
    network = google_compute_network.myvpc.id

  
}
# subnet creation
resource "google_compute_subnetwork" "mysubnet2" {
    name = "mysub2"
    provider = google.europe-west1
    ip_cidr_range = "10.132.0.0/20"
    network = google_compute_network.myvpc.id

  
}