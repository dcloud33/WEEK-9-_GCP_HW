resource "google_compute_firewall" "http_rules" {
  name        = "my-http-firewall-rule"
  network     = google_compute_network.vpc_network.name
  description = "Creates firewall rule allowing http traffic"

  allow {
    protocol  = "tcp"
    ports     = ["80"]
  }

source_ranges = ["0.0.0.0/0"]
  
  target_tags = ["http-rule"]
}