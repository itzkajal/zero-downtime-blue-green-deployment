# Zero Downtime Blue-Green Deployment

This project demonstrates zero downtime deployment using:

- Docker
- Nginx
- Jenkins
- Terraform
- Blue-Green strategy

## Architecture

User → Nginx → Blue / Green containers

## Flow

1. Blue version running
2. Deploy Green version
3. Health check
4. Switch traffic
5. Remove Blue
6. No downtime

## Ports

Nginx → 8080  
Blue → 8081  
Green → 5001  
Jenkins → 8082  

## Run

Start Blue & Green containers

Run Jenkins pipeline

Traffic switches automatically

## Resume Line

Implemented zero-downtime Blue-Green deployment using Docker, Jenkins, Nginx, and Terraform.
