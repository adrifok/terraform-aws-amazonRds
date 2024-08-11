Multi-Tier Architecture on AWS using Terraform
Deployment of a scalable and resilient multi-tier architecture on AWS using Terraform.

Project Overview
This project allows to deploy a highly available, scalable, and secure multi-tier architecture on Amazon Web Services (AWS) using Terraform. The architecture consists of the following three tiers:

Web Tier: This tier handles incoming user requests and can be horizontally scaled for increased capacity. It typically includes web servers and a load balancer for distributing traffic.

Application Tier: Application servers run our business logic and interact with the database tier. They can also be horizontally scaled to meet demand.

Database Tier: The database stores and manages our application data. In this architecture, I use Amazon RDS for a managed database service.

The Application Tier hosts the application servers responsible for running business logic and interacting with the database tier. Key components include:
Application Servers: These run the application code and can be horizontally scaled.
Load Balancer: Distributes traffic to the application servers.
Auto Scaling: Automatically adjusts the number of web servers based on traffic.
Security Groups: Controls incoming and outgoing traffic to the application servers.

The Terraform configuration for this project is organized into different and resources to create the necessary AWS infrastructure components. Key resources include:

Virtual Private Cloud (VPC)
Subnets and Route Tables
Security Groups and Network ACLs
Load Balancers
Auto Scaling Groups
RDS Database Instances
