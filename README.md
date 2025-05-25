# Terraform Azure Windows VM Deployment

This repository contains Terraform configuration files to deploy a Windows Virtual Machine in Microsoft Azure. The setup includes:

- Resource Group
- Virtual Network (VNet)
- Subnet
- Network Security Group (NSG) and its association with the Subnet
- Network Interface Card (NIC)
- Windows Virtual Machine

## 📁 Directory Structure


## 🚀 Prerequisites

- Terraform installed ([Install Guide](https://developer.hashicorp.com/terraform/downloads))
- Azure CLI installed and logged in (`az login`)
- Azure Subscription

## 🛠️ How to Use

### 1. Clone the repository

git clone https://github.com/<your-username>/terraform-azure-windows-vm.git
cd terraform-azure-windows-vm

2. Initialize Terraform
terraform init

3. Review the execution plan
terraform plan

4. Apply the configuration
terraform apply

5. Destroy the infrastructure
terraform destroy

🔐 Security Notice
Make sure you do not commit any sensitive information such as credentials, client secrets, or passwords. Use environment variables or secret managers to manage secrets securely.

📄 License
This project is licensed under the MIT License.

