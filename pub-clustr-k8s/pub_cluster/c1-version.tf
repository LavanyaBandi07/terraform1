terraform {
  required_version = "~> 1.10"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 6.20.0, < 7.0.0"
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