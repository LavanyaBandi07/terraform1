terraform {
  required_version = "~> 1.10"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.21.0"
    }
    kubernetes = {
  source = "hashicarp/kubernetes"
  version =">= 2.36"
  }
  }

  backend "gcs" {
    bucket = "terraform-backend-serv-test"
    prefix = "dev/gke-cluster-public"
  }

}


