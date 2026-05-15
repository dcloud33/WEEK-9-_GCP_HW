output "load_balancer_url" {
  description = "This is the URL to test the loadbalancer"
  value       = "http://${google_compute_global_address.web.address}"
}

