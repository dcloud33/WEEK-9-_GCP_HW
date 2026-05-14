resource "google_compute_instance_template" "instance_template" {
  name_prefix  = "web-template-"
  machine_type = "e2-micro"

  tags = ["http-rule"]

  disk {
    source_image = "debian-cloud/debian-12"
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network    = google_compute_network.vpc_network.id
    

    access_config {}
  }

  metadata_startup_script = file("${path.module}/src/supera.sh")

  lifecycle {
    create_before_destroy = true
  }
}