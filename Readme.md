# Global Load Balancer with MIG Deployment

## Overview

This project deploys a Google Cloud external application global load balancer
using a Managed Instance Group (MIG) as the backend service.

The project includes:
- Custom VPC
- Firewall rules using target tags
- Instance template
- Managed instance group
- Health checks
- Global load balancer
- Cloud Armor policy
- Cloud CDN support



## Objectives

The goal of this lab was to learn:
- How global load balancing works
- How managed instance groups scale applications
- How health checks determine backend availability
- How Cloud Armor protects internet-facing services
- How Cloud CDN improves performance

---

## Resources Used

### Documentation
- Google Cloud Documentation
- Terraform Registry 
- Google Cloud Console 

- Websites:
https://docs.cloud.google.com/load-balancing/docs/health-checks
https://www.geeksforgeeks.org/system-design/reverse-proxy-vs-load-balancer/
https://docs.cloud.google.com/load-balancing/docs/url-map-concepts
https://docs.cloud.google.com/load-balancing/docs/l7-internal/traffic-management#path_rules
https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map

## Q&A


## Runbook

Summary:
I created a ClickOps runbook to configure an external global application load balancer with a Managed Instance Group (MIG) backend, health checks, and traffic distributed only to healthy instances.

## Terraform

Summary:
Created a terraform subdirectory with terraform code block that are seperated in numerical sequence builing on each prior terraform file.