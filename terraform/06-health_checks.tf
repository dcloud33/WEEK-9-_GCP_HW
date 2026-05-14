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

resource "google_compute_health_check" "http_health_checks" {
  name         = "health-check"
 
  timeout_sec        = 5
  check_interval_sec = 30
  healthy_threshold = 2
  unhealthy_threshold = 2
  
  http_health_check {
    port = 80
  }
  
}

resource "google_compute_health_check" "mig_health_check" {
  name = "mig-health-check"

  timeout_sec        = 5
  check_interval_sec = 30
  healthy_threshold = 2
  unhealthy_threshold = 2

  http_health_check {
    port         = 80
    request_path = "/"
  }
}

resource "google_compute_health_check" "lb_backend" {
  name = "lb-backend-health-check"


  timeout_sec        = 5
  check_interval_sec = 30
  healthy_threshold = 2
  unhealthy_threshold = 2

  http_health_check {
    port         = 80
    request_path = "/"
  }
}




