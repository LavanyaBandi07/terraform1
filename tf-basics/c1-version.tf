
# terraform settings block or configuration block or terraform block
terraform {
  required_version = "~> 1.10"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 6.21.0"
    }
  }
}


# provider block

provider "google" {
    project = var.gcp_project
    region = var.gcp_region
    
  
}