resource "google_compute_network" "vpc_network" {
    name = "vpc-network"
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "vpc_subnetwork" {
    name = "basic-subnetwork"
    region = "us-east1"

    network = google_compute_network.vpc_network.id
    ip_cidr_range = "10.77.0.0/24"
}