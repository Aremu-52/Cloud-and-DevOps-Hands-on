# Phase 1: Provision AWS Infrastructure with Terraform & Ansible

## Objective
Use Terraform to create an AWS server and Ansible to configure it (install Docker).

## What was created
- VPC
- Public Subnet
- Internet Gateway + Route Table
- Security Group
- Two EC2 instances:
  - Control Node (for running Ansible)
  - Managed Node (application server)
- Docker installed and running on the Managed Node

## How to use

### 1. Terraform
```bash
cd terraform
terraform init
terraform validate
terraform plan -out=tfplan
terraform apply tfplan

### 2. Ansible
ansible -i inventory.ini app_servers -m ping
ansible-playbook -i inventory.ini playbook.yml
