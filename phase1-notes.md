# Phase 1: AWS Lightsail + SSH

## Completed Actions

### AWS Lightsail
- Instance created: n8n-receipt-processor
- Region: London (eu-west-2)
- Plan: 2 GB RAM, 1 vCPU ($12/month)
- Static IP attached: [YOUR_IP]
- Firewall ports: 22, 80, 443

### DNS
- A record created: n8n.lbtechclub.com → [YOUR_IP]

### VPS Configuration
- Ubuntu 22.04 LTS
- Docker Engine installed
- Docker Compose plugin installed
- UFW configured (allow 22,80,443)
- SSH key authentication working

### Testing
- nginx test container ran successfully
- HTTP access confirmed via browser

## Commands Used
[Add key commands for future reference]

## Issues Encountered
[Add any problems and solutions here]
