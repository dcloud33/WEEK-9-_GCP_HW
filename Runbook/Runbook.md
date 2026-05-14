# Global Load Balancer Runbook

## Goal for this Runbook

Deploy a fully configured external global application load balancer with a Managed Instance Group (MIG) backend, health checks, and traffic distributed only to healthy instances. A global load balancer helps improve availability and can lower latency for users in different geographic locations.

---

# Prerequisites

What you need before getting started:

- Access to a Google Cloud project
- In your project you need the Cloud Engine API enabled
- Permissions to create network resources
- SSH access configured 
- Startup script ready for the VM instances
- The Firewall rules need to be planned
- Instance template deployed

---

# Deployment Steps


## 1. Create Instance Template

Why?:
This makes sure every VM instance created by the Managed Instance Group (MIG) uses the same configuration and settings

1. Click  on Compute Engine, then under Virtual machines, select Instance templates.
2. Click Create an instance template
3. Create a name for your template
4. Under Location, select Global
5. For your machine type, click on E2
6. Head down to Firewall, and select HTTP traffic
7. Click on Advance options, and select Management.
8. Once there add the startup script to the Automation box
9. Then Click Create
---

## 2. Create Managed Instance Group

Why?:
Provides backend servers that can automatically scale up or down depending on traffic and demand.

1. Head to Compute Engine, under Instance Groups, click on Instance Groups.
2. Click Create Instance Group
3. Name your instance group
4. In the instance template, click and select the instance template that you created prior.
5. Select the number of instances it can be 2 or more, that way you'll improve redundancy and availability.
6. Under Location, select Multiple Zones
7. In the Autohealing section click on Health Check, and create a Health Check
8. Name your Health Check
9. Keep the scope Global, protocol will be TCP and port will be 80.
10. In Health Criteria, edit the check interval to 30 seconds, it takes time when booting up scripts. Keep everything else as the default.
---


---

## 3. Create a LoadBalancer, Backend Service


1. Click on Network Services and select Load balancing
2. Click Create load balancer
3. Type of load balancer, select Application Load Balancer
4. Select Public facing(external)
5. Click on Global deployment
6. Load balancer generation, select Global external Application Load Balancer
7. Click Configure
8. Name your Load Balancer
9. Under New Frontend IP and port, name the Frontend, Protocol will be HTTP, IP version will be IPv4, IP address will be Ephemeral and Port will be 80.
10. Under Backend configuration,click drop down for Backend services and backend buckets.
11. Click Create Backend Services, name your Backend Service, Backend type will be Instance Group that you created prior this will serve as your backend service, Protocol HTTP, click Health Check and Create Health Check for your Backend.
12. In the Health Check name it and keep the rest of the settings as default and click Create.
13. Next click on Routing rules, under mode select Simple host and path rule
14. Review and make sure the setting selected are correct and click Create.
---



## 4. Test and Validate 

1. Click in Network Services, and select LoadBalancer, clicking on the LoadBalancer that you created.
2. Under Frontend in the IP Port select the IP address with the exception of the :80.
3. Open a new browser and put http://<IP-address-you copied>
4. After you paste it, the browser should open displaying the information that the script had provided.

---

# Key Settings Explained

## Health Check Firewall Access

Health check IP ranges must be allowed through firewall rules or instances will remain unhealthy.

---

