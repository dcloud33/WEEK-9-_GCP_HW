output "global_load_balancer_ip" {
  description = "Public IP address for the global load balancer."
  value       = google_compute_global_address.web.address
}

output "load_balancer_url" {
  description = "This is the URL to test the loadbalancer"
  value       = "http://${google_compute_global_address.web.address}"
}

