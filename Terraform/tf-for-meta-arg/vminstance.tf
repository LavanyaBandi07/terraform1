#creating vm instance
resource "google_compute_instance" "myapp1" {
    #meta arguments
    count = 2
    name = "myapp1-vm-${count.index}"
    machine_type = var.machine_type
    zone ="us-central1-a"
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