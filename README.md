<<<<<<< Updated upstream
# Devops Toolkit
=======
# DevOps Toolkit 🚀
>>>>>>> Stashed changes

A comprehensive collection of production-ready shell scripts designed to automate critical DevOps operations including deployment, monitoring, backup, server management, and SSL certificate handling.

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Shell](https://img.shields.io/badge/shell-bash-green.svg)
![Platform](https://img.shields.io/badge/platform-linux-lightgrey.svg)

## 🎯 Overview

This toolkit provides enterprise-grade automation scripts that reduce manual operations, eliminate human errors, and ensure consistent deployments across environments. Perfect for DevOps engineers, system administrators, and development teams looking to streamline their infrastructure operations.

## 📁 Project Structure

```
devops-toolkit/
├── scripts/
│   ├── deployment/
│   │   ├── deploy.sh               # Application deployment with rollback
│   │   └── rollback.sh             # Automated rollback functionality
│   ├── monitoring/
│   │   ├── health-check.sh         # System and application health monitoring
│   │   └── log-analyzer.sh         # Log analysis and pattern detection
│   ├── backup/
│   │   ├── database-backup.sh      # Database backup with encryption
│   │   └── file-backup.sh          # File system backup automation
│   ├── server-management/
│   │   └── server-setup.sh         # Automated server provisioning
│   ├── ssl/
│   │   └── ssl-manager.sh          # SSL certificate management
│   └── database/
│       └── db-operations.sh        # Database maintenance operations
├── config/
│   ├── app.conf                    # Application configuration
│   └── servers.conf                # Server inventory and settings
├── utils/
│   ├── common.sh                   # Shared utility functions
│   └── logger.sh                   # Centralized logging system
├── tests/
│   ├── test-deployment.sh          # Deployment script tests
│   └── test-monitoring.sh          # Monitoring script tests
├── logs/                           # Log files directory
└── README.md                       # This file
```

## ✨ Key Features

### 🔄 **Deployment Automation**

- **Zero-downtime deployments** with blue-green strategy
- **Automatic rollback** on deployment failure
- **Health checks** and verification
- **Multi-environment support** (dev, staging, production)

### 📊 **Comprehensive Monitoring**

- **Real-time health checks** for CPU, memory, disk, and services
- **Log analysis** with pattern detection and alerting
- **Performance metrics** collection and reporting
- **Email notifications** for critical issues

### 🔒 **Secure Backup Solutions**

- **Encrypted database backups** with compression
- **Incremental and differential** backup strategies
- **Remote storage upload** (S3, rsync, scp)
- **Automated cleanup** of old backups

### ⚙️ **Server Management**

- **Automated server provisioning** with security hardening
- **SSL certificate management** with Let's Encrypt
- **Firewall configuration** and fail2ban setup
- **Database operations** and optimization

### 🛡️ **Security & Compliance**

- **Security hardening** scripts
- **Encrypted backups** and secure transfers
- **Access control** and audit logging
- **SSL/TLS certificate** automation

## 🚀 Quick Start

### Prerequisites

```bash
# Ubuntu/Debian
sudo apt-get update
sudo apt-get install -y curl wget git mysql-client openssh-client

# CentOS/RHEL
sudo yum install -y curl wget git mysql openssh-clients
```

### Installation

```bash
# Clone the repository
git clone https://github.com/antonluckshman/devops-toolkit.git
cd devops-toolkit

# Make scripts executable
find scripts/ -name "*.sh" -exec chmod +x {} \;
chmod +x utils/*.sh

# Copy and configure settings
cp config/app.conf.example config/app.conf
cp config/servers.conf.example config/servers.conf

# Edit configurations
nano config/app.conf
nano config/servers.conf

# Create logs directory
mkdir -p logs
```

## 📖 Usage Guide

### Deployment Operations

```bash
# Deploy application with automatic rollback on failure
./scripts/deployment/deploy.sh --env production --rollback-on-failure

# Deploy specific version
./scripts/deployment/deploy.sh --version v2.1.0 --env staging

# Test deployment (dry run)
./scripts/deployment/deploy.sh --env production --dry-run

# Rollback to previous version
./scripts/deployment/rollback.sh --verify

# Rollback to specific version
./scripts/deployment/rollback.sh --version v1.9.0 --env production
```

### Monitoring & Health Checks

```bash
# Basic health check
./scripts/monitoring/health-check.sh

# Continuous monitoring with alerts
./scripts/monitoring/health-check.sh --continuous --interval 60 --email

# Health check with custom thresholds
./scripts/monitoring/health-check.sh --threshold cpu:80,memory:90,disk:85

# Analyze logs for errors
./scripts/monitoring/log-analyzer.sh --pattern "ERROR" --time 24h --alert-threshold 10

# Real-time log monitoring
./scripts/monitoring/log-analyzer.sh --follow --threshold 5
```

### Backup Operations

```bash
# Full database backup with encryption
./scripts/backup/database-backup.sh --type full --encrypt --remote

# Incremental database backup
./scripts/backup/database-backup.sh --type incremental --database myapp_db

# File system backup
./scripts/backup/file-backup.sh --type full --path /opt/myapp --encrypt

# Schema-only backup
./scripts/backup/database-backup.sh --type schema-only --database myapp_db
```

### Server Management

```bash
# Complete server setup with security hardening
./scripts/server-management/server-setup.sh --type full

# Security-only configuration
./scripts/server-management/server-setup.sh --type security-only

# Setup remote server
./scripts/server-management/server-setup.sh --server web2.example.com --type production
```

### SSL Certificate Management

```bash
# Install SSL certificate
./scripts/ssl/ssl-manager.sh install -d example.com -e admin@example.com

# Renew all certificates
./scripts/ssl/ssl-manager.sh renew

# Check certificate status
./scripts/ssl/ssl-manager.sh check -d example.com

# Monitor certificate expiration
./scripts/ssl/ssl-manager.sh monitor
```

### Database Operations

```bash
# Database status and statistics
./scripts/database/db-operations.sh status -d myapp_db

# Optimize database tables
./scripts/database/db-operations.sh optimize -d myapp_db

<<<<<<< Updated upstream
This project is licensed under the MIT License. See the LICENSE file for details.

 ## Author
Anton Lucshman

GitHub: @AntonLucshman
LinkedIn: Anton Lucshman
=======
# Database backup
./scripts/database/db-operations.sh backup -d myapp_db

# Clean up old data
./scripts/database/db-operations.sh cleanup -d myapp_db --dry-run
```

## ⚙️ Configuration

### Application Configuration (`config/app.conf`)

```bash
# Application settings
APP_NAME="MyApplication"
APP_VERSION="1.0.0"
APP_ROOT="/opt/myapp"
APP_USER="myapp"
APP_GROUP="myapp"

# Environment settings
ENVIRONMENT="production"
DEBUG_MODE="false"

# Web server settings
WEB_SERVER="nginx"
WEB_PORT="80"
SSL_PORT="443"
SSL_ENABLED="true"

# Database settings
DB_TYPE="mysql"
DB_HOST="localhost"
DB_PORT="3306"
DB_USER="myapp_user"
DB_NAME="myapp_db"

# Backup settings
BACKUP_RETENTION_DAYS="30"
BACKUP_ENCRYPTION_KEY="your-encryption-key"

# Alert settings
ALERT_EMAIL="admin@example.com"
SMTP_SERVER="localhost"
```

### Server Configuration (`config/servers.conf`)

```bash
# Production servers
PROD_WEB_SERVERS="web1.example.com web2.example.com"
PROD_DB_SERVERS="db1.example.com"
PROD_LOAD_BALANCER="lb.example.com"

# Staging servers
STAGING_WEB_SERVERS="staging-web.example.com"
STAGING_DB_SERVERS="staging-db.example.com"

# SSH settings
SSH_USER="deploy"
SSH_PORT="22"
SSH_KEY_PATH="~/.ssh/id_rsa"

# Backup storage
BACKUP_SERVER="backup.example.com"
BACKUP_USER="backup"
BACKUP_PATH="/backup/myapp"
```

## 🔧 Automation & Scheduling

### Cron Job Examples

```bash
# Edit crontab
crontab -e

# Daily health check at 9 AM
0 9 * * * /path/to/devops-toolkit/scripts/monitoring/health-check.sh --email

# Database backup daily at 2 AM
0 2 * * * /path/to/devops-toolkit/scripts/backup/database-backup.sh --type full

# SSL certificate monitoring weekly
0 8 * * 1 /path/to/devops-toolkit/scripts/ssl/ssl-manager.sh monitor

# Log analysis hourly
0 * * * * /path/to/devops-toolkit/scripts/monitoring/log-analyzer.sh --threshold 10

# File backup weekly on Sunday at 1 AM
0 1 * * 0 /path/to/devops-toolkit/scripts/backup/file-backup.sh --type full --encrypt
```

### CI/CD Integration

```yaml
# Example GitLab CI configuration
deploy_production:
  stage: deploy
  script:
    - ./scripts/deployment/deploy.sh --env production --version $CI_COMMIT_TAG
    - ./scripts/monitoring/health-check.sh --timeout 300
  only:
    - tags
  when: manual

health_check:
  stage: verify
  script:
    - ./scripts/monitoring/health-check.sh --post-deployment
  after_script:
    - ./scripts/monitoring/log-analyzer.sh --time 10m
```

## 🧪 Testing

```bash
# Run all tests
./tests/test-deployment.sh
./tests/test-monitoring.sh

# Test with dry run mode
./scripts/deployment/deploy.sh --dry-run
./scripts/backup/database-backup.sh --dry-run
./scripts/server-management/server-setup.sh --dry-run
```

## 📊 Monitoring & Logging

All scripts generate detailed logs in the `logs/` directory:

- `deployment.log` - Deployment operations
- `health-check.log` - Health monitoring results
- `backup.log` - Backup operations
- `ssl-manager.log` - SSL certificate operations
- `server-setup.log` - Server provisioning logs

### Log Analysis

```bash
# View recent logs
tail -f logs/deployment.log

# Search for errors
grep "ERROR" logs/*.log

# Monitor specific operations
grep "$(date '+%Y-%m-%d')" logs/health-check.log
```

## 🚨 Error Handling & Alerts

- **Comprehensive error checking** with meaningful error messages
- **Automatic rollback** on deployment failures
- **Email notifications** for critical issues
- **Slack integration** support (configurable)
- **Retry mechanisms** for transient failures

## 🔐 Security Features

- **Encrypted backups** using AES-256
- **Secure file transfers** via SSH/RSYNC
- **Access control** and authentication
- **Audit logging** for all operations
- **Security hardening** for new servers
- **SSL certificate** automation

## 📈 Performance Benefits

- **Reduce deployment time** from hours to minutes
- **Eliminate manual errors** through automation
- **Improve system reliability** with health monitoring
- **Ensure data protection** with automated backups
- **Enhance security** with automated hardening

## 🤝 Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-feature`)
3. Commit your changes (`git commit -am 'Add new feature'`)
4. Push to the branch (`git push origin feature/new-feature`)
5. Create a Pull Request

### Development Guidelines

- Follow existing code style and conventions
- Add appropriate error handling and logging
- Include tests for new functionality
- Update documentation as needed
- Test scripts in multiple environments

<!-- ## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details. -->

## 🆘 Support

- **Documentation**: Check this README and script comments
- **Issues**: Open an issue on GitHub
- **Discussions**: Use GitHub Discussions for questions
- **Email**: Contact the maintainer at anton.luckshman@email.com

## 🏷️ Version History

- **v2.0.0** - Complete rewrite with enhanced features
- **v1.5.0** - Added SSL management and database operations
- **v1.0.0** - Initial release with basic automation

## 👨‍💻 Author

**Anton Luckshman**

- GitHub: [@antonluckshman](https://github.com/antonluckshman)
- LinkedIn: [Anton Luckshman](https://linkedin.com/in/antonluckshman)
- Email: anton.luckshman@email.com

## 🙏 Acknowledgments

- Thanks to the DevOps community for inspiration and best practices
- Contributors who helped improve these scripts
- Open source projects that made this toolkit possible
- The Linux and shell scripting community

---

**⭐ If you find this project useful, please consider giving it a star!**

Built with ❤️ by Anton Luckshman for the DevOps community
>>>>>>> Stashed changes
