# Create a new instance
resource "google_compute_instance" "default" {
   name = "ubuntu-xenial"
   machine_type = "f1-micro"
   zone = "asia-southeast1-a"
   boot_disk {
      initialize_params {
      image = "ubuntu-1604-lts"
   }
}
network_interface {
   subnetwork    = "subnet1"
   access_config {}
}
service_account {
   scopes = ["userinfo-email", "compute-ro", "storage-ro"]
   }
}