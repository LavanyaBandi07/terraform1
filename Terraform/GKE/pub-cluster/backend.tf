terraform {
  backend "gcs" {
    bucket = "terraform-backend-serv-test"
    prefix = "dev/gke-cluster-public"
  }
}
