resource "google_compute_url_map" "web" {
  name            = "url-map"
  default_service = google_compute_backend_service.backend_service.id
}

resource "google_compute_target_http_proxy" "web" {
  name    = "web-http-proxy"
  url_map = google_compute_url_map.web.id
}

resource "google_compute_global_address" "web" {
  name = "loadbalancer-global-ip"
}

resource "google_compute_global_forwarding_rule" "http_forwarding" {
  name                  = "http-forwarding-rule"
  ip_address            = google_compute_global_address.web.id
  port_range            = "80"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  target                = google_compute_target_http_proxy.web.id
}

resource "google_compute_backend_service" "backend_service" {
  name                  = "web-backend-service"
  protocol              = "HTTP"
  port_name             = "http"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  timeout_sec           = 30

  health_checks = [
    google_compute_health_check.lb_backend_healthcheck.id
  ]

  backend {
    group = google_compute_region_instance_group_manager.managed_instance_groups.instance_group
  }
}