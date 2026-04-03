# n8n Receipt Automation

## DevOps Learning Project

### Progress
- [ ] Phase 0: Local setup
- [ ] Phase 1: Lightsail + SSH
- [ ] Phase 2: DNS + Docker test
- [ ] Phase 3: n8n stack deployed
- [ ] Phase 4: Google OAuth
- [ ] Phase 5: First workflow
- [ ] Phase 6: OpenAI integration
- [ ] Phase 7: Multi-user router
- [ ] Phase 8: Documentation

### Issues Encountered
(Add as you go)

# 📄 n8n Receipt Automation System

> **DevOps Learning Project**: Automated receipt processing using n8n, OpenAI GPT-4o, and Google Sheets.

## 🎯 Project Overview

This project automates the extraction of expense data from receipt images/PDFs sent via email. When a user forwards a receipt to a designated email address, the system:

1. Detects the incoming email (Gmail trigger)
2. Extracts date, vendor, amount, currency, and category using GPT-4o with Vision
3. Routes the data to the correct company's Google Sheet
4. Appends a new row with structured data

**Target scale**: 20 separate companies, each with their own Google Sheet

## 🏗️ Architecture
User sends receipt email
↓
Gmail API Trigger (n8n)
↓
OpenAI GPT-4o Vision (extraction)
↓
Router (Code node - maps email → Sheet ID)
↓
Google Sheets API (append row)
↓
Company's private Google Sheet

## 🛠️ Technologies Used

| Category | Technology | Purpose |
|----------|-----------|---------|
| **Orchestration** | n8n (self-hosted) | Workflow automation |
| **Containerization** | Docker + Docker Compose | Run n8n, PostgreSQL, Redis, Traefik |
| **Cloud Infrastructure** | AWS Lightsail | VPS hosting |
| **Reverse Proxy** | Traefik | SSL termination, routing |
| **Database** | PostgreSQL | Workflow state, credentials |
| **Cache** | Redis | Queue management |
| **AI/ML** | OpenAI GPT-4o Vision | Receipt data extraction |
| **Version Control** | Git + GitHub | Source control |
| **Local Dev** | WSL2 + Docker Desktop | Development environment |

## 📋 Prerequisites

- Windows 10/11 with WSL2
- Docker Desktop
- VS Code with Remote - SSH extension
- AWS account
- Domain name (lbtechclub.com)
- OpenAI API key (platform.openai.com)
- Google Cloud Project with Gmail/Sheets APIs

## 🚀 Setup Phases

### Phase 0: Local Development Setup (Current)
- [x] Docker Desktop installed
- [x] VS Code configured for WSL
- [x] GitHub repository connected
- [x] Project structure created

### Phase 1: AWS Lightsail + SSH
- [ ] Create Lightsail instance (Ubuntu 22.04, 2GB RAM)
- [ ] Attach static IP
- [ ] Configure firewall
- [ ] SSH from VS Code

### Phase 2: DNS + Docker Test
- [ ] Create A record: n8n.lbtechclub.com
- [ ] Test with nginx container

### Phase 3: Deploy n8n Stack
- [ ] docker-compose.yml created
- [ ] All 4 containers running
- [ ] n8n accessible at n8n.lbtechclub.com

### Phase 4: Google OAuth Setup
- [ ] Google Cloud Project created
- [ ] APIs enabled
- [ ] OAuth credentials configured

### Phase 5: First Workflow (Mock AI)
- [ ] Gmail Trigger → Set node → Sheets
- [ ] Test email → row appears

### Phase 6: OpenAI Integration
- [ ] API key added
- [ ] Receipt extraction prompt written
- [ ] Tested with 10+ receipt images

### Phase 7: Multi-User Router
- [ ] Code node for email → Sheet ID mapping
- [ ] Two test users → two different sheets

### Phase 8: Documentation & Cleanup
- [ ] Final README
- [ ] Troubleshooting guide
- [ ] Cost analysis

## 📂 Project Structure
n8n-receipt-automation/
├── docker/
│ ├── docker-compose.yml # Multi-container definition
│ └── .env.example # Environment template
├── workflows/
│ └── receipt-processor.json # Exported n8n workflow
├── prompts/
│ └── receipt-extraction-v1.txt # GPT-4o prompt
├── scripts/
│ ├── backup.sh # Database backup script
│ └── healthcheck.sh # Container health check
├── .gitignore
└── README.md

## 🔐 Security Notes

- All secrets stored in `.env` (never committed)
- OAuth tokens encrypted by n8n
- Receipt data never stored by n8n (direct to user's sheet)
- HTTPS enforced via Let's Encrypt

## 📈 Estimated Costs (Monthly)

| Service | Cost |
|---------|------|
| AWS Lightsail (2GB RAM) | $10-15 |
| OpenAI API (500 receipts) | $5-25 |
| Domain (lbtechclub.com) | Already owned |
| **Total** | **$15-40** |

## 🐛 Troubleshooting Log

*Add issues and solutions as you encounter them*

### Issue #1: TBD
- **Symptom**: 
- **Cause**: 
- **Solution**: 

## 📚 Learning Resources Used

- [n8n Documentation](https://docs.n8n.io)
- [OpenAI Vision API](https://platform.openai.com/docs/guides/vision)
- [Docker Compose](https://docs.docker.com/compose/)
- [AWS Lightsail](https://aws.amazon.com/lightsail/)

## 📄 License

MIT

## 👨‍💻 Author

[Ilias Abdi] - DevOps Learning Project