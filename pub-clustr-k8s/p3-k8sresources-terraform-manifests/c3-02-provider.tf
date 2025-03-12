# provider 

provider "google" {
  project = var.gcp_project
  region  = var.gcp_region1
}

data "google_container_cluster" "gke" {
  name     = data.terraform_remote_state.gke.outputs.gke_cluster_name
  location = data.terraform_remote_state.gke.outputs.gke_cluster_location
}

output "gke_xluster_details" {
    value = {
        gke_endpoint = data.google_container_cluster.my_cluster.gke.endpoint
        gke_cluster_ca_certificate = data.google_container_cluster.gke.master_auth.0.cluster_ca_certificate
    }
  }
