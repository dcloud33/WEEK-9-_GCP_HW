resource "google_compute_network" "vpc_network" {
  project                 = "my-vpc"
  name                    = "vpc-network"
  auto_create_subnetworks = true
  mtu                     = 1460
  routing_mode = "GLOBAL"
}