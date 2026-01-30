📌**Overview**

This repository demonstrates an end-to-end Infrastructure as Code (IaC) implementation using Terraform to provision Azure resources, with Azure DevOps YAML pipelines used to automate the deployment and teardown process.
The project follows DevOps and security best practices, including remote state management, pipeline-based execution, and secure handling of sensitive configuration values.

🏗️ **Architecture**

The Terraform configuration provisions the following Azure resources:
Resource Group
Virtual Network and Subnets
Network Security Groups
Azure App Service / Virtual Machine (based on configuration)
Storage Account (used for Terraform remote state)
Infrastructure is defined declaratively using Terraform and deployed via an Azure DevOps pipeline.

⚙️ **Tools & Technologies**

Cloud Platform: Microsoft Azure
Infrastructure as Code: Terraform
CI/CD: Azure DevOps (YAML Pipelines)
Version Control: GitHub
State Management: Azure Storage Backend

🚀 **CI/CD Pipeline Flow**

The Azure DevOps pipeline performs the following steps:
Installs the required Terraform version
Initialises Terraform with a remote backend in Azure Storage
Validates Terraform configuration
Formats Terraform code
Executes Terraform plan
Applies infrastructure changes
Supports controlled destruction of resources using terraform destroy
Pipeline execution is fully automated and repeatable.

🔐 **Security & Secrets Management**

To follow security best practices:
No secrets or credentials are stored in the repository
Azure authentication is handled via Azure DevOps Service Connections
Backend configuration and environment-specific values are managed using pipeline variables
Terraform state files, .tfvars files and secrets.txt are excluded from source control using .gitignore
This ensures sensitive information is never exposed in the codebase.

📂 **Repository Structure**
.
├── azure-pipelines.yml   # Azure DevOps pipeline definition
├── backend.tf            # Remote backend configuration
├── main.tf               # Azure resource definitions
├── provider.tf           # Azure provider configuration
├── variables.tf          # Input variable definitions
├── .gitignore            # Ignored files and folders

🧪 **How to Use**

Clone the repository
Configure required variables in the Azure DevOps pipeline
Create an Azure DevOps service connection to Azure
Run the pipeline to provision infrastructure
Use the destroy stage to clean up resources when no longer required
