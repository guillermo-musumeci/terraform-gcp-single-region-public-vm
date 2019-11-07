# Single region, public only network configuration | network.tf

# create VPC
resource "google_compute_network" "vpc" {
  name                    = "${var.app_name}-${var.app_environment}-vpc"
  auto_create_subnetworks = "false"
  routing_mode            = "GLOBAL"
}

# create public subnet
resource "google_compute_subnetwork" "public_subnet_1" {
  name          = "${var.app_name}-${var.app_environment}-public-subnet-1"
  ip_cidr_range = var.public_subnet_cidr_1
  network       = google_compute_network.vpc.name
  region        = var.gcp_region_1
}

# allow internal icmp (disable for better security)
resource "google_compute_firewall" "allow-internal" {
  name    = "${var.app_name}-${var.app_environment}-fw-allow-internal"
  network = "${google_compute_network.vpc.name}"
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }
  source_ranges = [
    "${var.public_subnet_cidr_1}"
  ]
}
