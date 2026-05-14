
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_instance_group_manager
resource "google_compute_region_instance_group_manager" "managed_instance_groups" {
  name               = "my-mig"
  region             = "us-east1"
  base_instance_name = "web-server"
  target_size        = 4

  version {
    instance_template = google_compute_instance_template.instance_template.id
  }

  named_port {
    name = "http"
    port = 80
  }

    auto_healing_policies {
    health_check      = google_compute_health_check.mig_health_check.id
    initial_delay_sec = 300
  }
}