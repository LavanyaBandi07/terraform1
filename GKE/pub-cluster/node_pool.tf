resource "google_container_node_pool" "node_pool-1" {
  name       = "${local.name}-node-pool-1"
  cluster    = google_container_cluster.gke-cluster.id
  node_count = 1


  node_config {
    preemptible  = true
    machine_type = var.machine_type
    disk_size_gb = 50 # Reduce storage to fit within available quota

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.gke_sa.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
    tags = [tolist(google_compute_firewall.fw_ssh.target_tags)[0]]
  }
}