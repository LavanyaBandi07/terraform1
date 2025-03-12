
# terraform settings block or configuration block or terraform block
terraform {
  required_version = "~> 1.10"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.21.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.36.0"
    }
  
  }
}


# provider block

provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
}

/* data "google_container_cluster" "gke" {
  name = data.terraform_remote_state.gke.outputs.gke_cluster_name
  location = data.terraform_remote_state.gke.outputs.gke_cluster_location
  
}
output "gke_cliuster_details" {
  value = {
  gke_endpoint = data.terraform_remote_state.gke.gke_endpoint
   data.terraform_remote_state.master_auth
  }
} */