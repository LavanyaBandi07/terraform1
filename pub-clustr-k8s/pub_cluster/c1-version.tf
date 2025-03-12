terraform {
  required_version = "~> 1.10"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.21.0"
    }
  }

  backend "gcs" {
    bucket = "terraform-backend-serv-test"
    prefix = "dev/gke-cluster-public"
  }

}

# provider 

provider "google" {
  project = var.gcp_project
  region  = var.gcp_region1
}