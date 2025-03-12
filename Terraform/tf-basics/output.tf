# output module


# attributes
output "instance_id" {
  description = "this is for instance id "
  value = google_compute_instance.myapp1.instance_id
}
output "get_external_ip" {
  description = "for external ip"
  value = google_compute_instance.myapp1.network_interface.0.access_config.0.nat_ip
}
# arguments

output "vm_type" {
  description = "this is for instance type value"
  value = google_compute_instance.myapp1.machine_type
}