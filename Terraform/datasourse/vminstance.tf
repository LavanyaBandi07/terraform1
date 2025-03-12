variable "zone_machine_map" {
  type = map(string)
  default = {
    "us-central1-a" = "e2-micro"
    "us-central1-c" = "e2-small"
    "us-central1-f" = "e2-medium"


  }
}


#creating vm instance
resource "google_compute_instance" "myapp1" {
    #meta arguments
    for_each = var.zone_machine_map
    name = "myapp1-vm-${each.key}"
    machine_type = each.value
    zone = each.key
    # tags = ["ssh-tag","webserver-tag"]
    tags = [tolist(google_compute_firewall.fw_ssh.target_tags)[0],tolist(google_compute_firewall.fw_http.target_tags)[0]]
    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-12"
      }
    }
    metadata_startup_script = file("${path.module}/app1-webserver-install.sh")
    #network interface for instance
    network_interface {
      subnetwork = google_compute_subnetwork.mysubnet.id
      access_config {
        
      }
    }


}