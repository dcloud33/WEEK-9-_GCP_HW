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

resource "google_compute_firewall" "allow_health_checks" {
  name    = "allow-google-health-checks"
  network = google_compute_network.vpc_network.name

  target_tags = ["http-rule"]
# https://docs.cloud.google.com/load-balancing/docs/health-check-concepts?utm_source
  source_ranges = [
    "35.191.0.0/16",
    "130.211.0.0/22"
  ]

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

}