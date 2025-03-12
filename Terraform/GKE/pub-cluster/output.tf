output "gke_cluster_name" {
  value = google_container_cluster.gke-cluster.name

}

output "gke_cluster_location" {
  value = google_container_cluster.gke-cluster.location

}

output "gke_cluster_endpoint" {
  value = google_container_cluster.gke-cluster.endpoint

}

output "gke_cluster_master_version" {
  value = google_container_cluster.gke-cluster.master_version

}