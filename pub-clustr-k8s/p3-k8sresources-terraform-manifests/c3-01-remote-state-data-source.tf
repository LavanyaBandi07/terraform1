data "terraform_remote_state" "gke" {
  backend = "gcs"
  config = {
    bucket = "terraform-backend-serv-test"  
    prefix = "dev/gke-cluster-public"
  }

}

# output 
output "p1_gke_cluster_name" {
  value = data.terraform_remote_state.gke.outputs.gke_cluster_name
}

output "p1_gke_cluster_location" {
  value = data.terraform_remote_state.gke.outputs.gke_cluster_location
}