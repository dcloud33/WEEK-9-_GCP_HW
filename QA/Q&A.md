# Q&A Section


# Q&A

# Load Balancers

## How does load balancing contribute to fault tolerance and high availability?

Load balancers contribute to fault tolerance by sending traffic to multiple servers and in the event of a server goes down traffic is routed to another server contributing to fault tolerance.

It contributes to high availibility, by making it possible to access applications during application being down or maintenance, making it possible for users to access the application improving reliability.

---

## Do global load balancers decrease latency for end users?

Yes, since they use a single anycast IP which is a method to direct incoming traffic through various edge locations. This sends traffic to the closet backend (Google Cloud, other public clouds, or on-premises) to the client and utilizes centralizes traffic Google's 202+ points of presence for minimal latency.


---

## What are load balancer health checks for?

Health checks are used to confirm that backend instances are functioning properly and can successfully handle incoming requests. When a health check fails the load balancer stops sending traffic to it, unit its healthy.


---

## Is a load balancer different from a reverse proxy?

Yes. A reverse proxy handles and forwards requests to backend servers, while a load balancer is mainly used to distribute traffic across multiple backend servers to improve performance and availability.


---

## What are routing rules and URL maps used for?

Routing rules and URL maps are used to decide where traffic should be sent based on things like the request path, domain name, or other request information.


---

## What is an anycast IP address?

Anycast is a networking method where multiple servers share the same IP address. When a user sends a request, the network routes them to the closest or best available server based on things like distance, latency, and network path.

# Cloud Armor

## What does Cloud Armor offer?

Cloud Armor provides security protections for internet-facing applications.

It helps block malicious traffic, enforce security policies, and protect against attacks such as DDoS attempts.

---

## Why is it used?

It is used to protect applications from unwanted or malicious traffic before requests reach backend servers.

This improves security and reduces the risk of outages.

---

## What OSI layer does Cloud Armor operate at?

Cloud Armor mainly operates at Layer 7, the application layer.

This is important because it allows Cloud Armor to inspect HTTP and HTTPS requests instead of only filtering IP addresses and ports.

VPC firewall rules mainly operate at Layers 3 and 4.

---

## What are rate-based rules?

Rate-based rules limit how many requests a client can send within a certain amount of time.

This helps reduce abuse, spam, and denial-of-service attacks.

---

## What is reCAPTCHA and how does it relate to Cloud Armor?

reCAPTCHA helps determine whether traffic is coming from real users or automated bots.

Cloud Armor can integrate with reCAPTCHA to help filter suspicious requests.

# Cloud CDN

## What are POPs used for?

POPs, or Points of Presence, are edge locations that cache content closer to users.

This improves performance because users receive content from nearby locations instead of distant servers.

---

## What kind of files are served with Cloud CDN?

Cloud CDN commonly serves static files such as:
- Images
- Videos
- CSS files
- JavaScript files
- Documents

---

## What services can be used as origins for Cloud CDN?

Cloud CDN can use:
- Backend buckets
- Load balancers
- Instance groups
- Network endpoint groups

---

## Does Cloud CDN help protect against cyberattacks?

Cloud CDN can help absorb large amounts of traffic and reduce stress on backend servers.

While it is not a dedicated security product, it can help reduce the impact of some denial-of-service attacks.

---

## Should every enterprise use Cloud CDN?

Not always.

Cloud CDN is most useful for applications with global users or large amounts of static content. Smaller internal applications may not benefit enough to justify the added complexity or cost.

---

## What is TTL?

TTL stands for Time To Live.

TTL controls how long cached content stays stored before the CDN checks for updated content from the origin server.

Short TTL values improve freshness while longer TTL values improve performance.