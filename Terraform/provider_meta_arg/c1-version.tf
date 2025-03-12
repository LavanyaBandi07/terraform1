
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
    project = "maximal-centaur-447108-u6"
    region = "us-central1"
    alias = "us-central1"
}
provider "google" {
    project = "maximal-centaur-447108-u6"
    region = "europe-west1"
    alias = "europe-west1"
}


