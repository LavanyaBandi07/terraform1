# output module
output "vm_name_0" {
  description = "this is to get vm name "
  value = google_compute_instance.myapp1[0].name
  
}
 
 output "vm_name_1" {
  description = "thus is to get vm 1 name"
  value = google_compute_instance.myapp1[1].name
   
 }
 

#for loop for list items
output "for_loop_for_list" {
  description = "this is used to get list of instances names"
  value = [for i in google_compute_instance.myapp1 : i.name]
  
}

output "for_op_map_items" {
  description = "this is to get map items oin key value pairs example name = id "
  value = {for i in google_compute_instance.myapp1 : i.name => i.instance_id}
  
}
output "advanced_map" {
  description = "this is for advanced rule"
  value = {for i, j in google_compute_instance.myapp1 : j.instance_id => j.name }
  
}

output "to_get_ext_ip" {
  description = "to get external ips"
  value =  [for i in google_compute_instance.myapp1 : i.network_interface.0.access_config.0.nat_ip]
  
}
output "get_external_ip" {
  description = "for external ip"
  value = google_compute_instance.myapp1[*].network_interface.0.access_config.0.nat_ip
}

/*
# attributes
output "instance_id" {
  description = "this is for instance id "
  value = google_compute_instance.myapp1.instance_id
}
output "get_external_ip" {
  description = "for external ip"
  value = google_compute_instance.myapp1.[*].network_interface.0.access_config.0.nat_ip
}
# arguments

output "vm_type" {
  description = "this is for instance type value"
  value = google_compute_instance.myapp1.machine_type
}
*/