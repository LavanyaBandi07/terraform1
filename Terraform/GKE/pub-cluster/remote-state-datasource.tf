data "terraform_remote_state" "gke" {
    backend = "gcs"
    config = {
      bucket = "terraform-backend-serv-test"
      prefix = "dev/gke-cluster-public"
    }
}

output "p1_gke_cluster_name" {
    value = data.terraform_remote_state.gke.outputs.gke_cluster_name
  
}

# output for cluster location
output "p1_gke_cliuster_location" {
  value = data.terraform_remote_state.gke.outputs.gke_cluster_location
}