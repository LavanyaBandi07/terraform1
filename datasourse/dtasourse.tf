data "google_compute_zones" "availabily" {
    status = "UP"
}


output "compute_zones" {
  description = "thisis to get zones "
  value = data.google_compute_zones.availabily.names
}