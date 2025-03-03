
resource "google_container_cluster" "gke-cluster" {
  name     = "${local.name}-gke-cluster"
  location = var.gcp_zone


  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1

  


  # network
  network    = google_compute_network.myvpc.self_link
  subnetwork = google_compute_subnetwork.mysubnet.self_link

  # delete protection nby default enabled so for learning perpuse we need to disable it

  deletion_protection = false

}


