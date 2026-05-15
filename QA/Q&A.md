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
Cloud Armor helps protect internet-facing applications by filtering and blocking malicious traffic before it reaches backend services.


## Why is it used?
Cloud Armor is used to help protect applications from unwanted or malicious requests before they hit the backend servers.


## What OSI layer does Cloud Armor operate at?
Cloud Armor mainly operates at Layer 7, the application layer.
This is important because it allows Cloud Armor to inspect HTTP and HTTPS requests instead of only filtering IP addresses and ports like traditional firewall rules.


## What are rate-based rules?
Rate-based rules are used to limit how many requests a client can send within a certain amount of time.
Which can be a way to help reduce spam, abuse, and denial-of-service attacks.

## What is reCAPTCHA and how does it relate to Cloud Armor?
reCAPTCHA helps determine whether request are coming from a client or an automated bot, used as a way to filter suspicious traffic.


# Cloud CDN

## What are POPs used for?
So POPs, or Points of Presence, are edge locations that cache content closer to users. This helps with reducing latency, that way users can recieve content from a nearby location instead of a distant server.


## What kind of files are served with Cloud CDN?
Cloud CDN is commonly used to serve static content for images, videos,css files, Javascript files, and Documents.



## What services can be used as origins for Cloud CDN?
Cloud CDN can use several services as origins which includes, backend buckets, load balancers, instance groups, network endpoint groups.



## Does Cloud CDN help protect against cyberattacks?
Cloud CDN can help absorb large amounts of traffic(not a dedicated security service) and reduce stress on backend servers, whic can help reduce the impact of denial-of service attacks.


## Should every enterprise use Cloud CDN?
Not always.
Cloud CDN is most useful for applications with global users or large amounts of static content. Smaller internal applications may not benefit enough to justify the added cost or complexity.

## What is TTL?
It stands for Time To Live.
TTL controls how long content stays cached before the CDN checks the origin server for updated content.
