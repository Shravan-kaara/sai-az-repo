# Azure Terraform

This repository provisions a single Azure Ubuntu VM through Terraform and GitHub Actions.

## GitHub setup

Create an Azure AD app registration or user-assigned managed identity with a federated credential for this repository. Grant it `Contributor` on the target subscription, then add these repository secrets:

- `AZURE_CLIENT_ID`
- `AZURE_TENANT_ID`
- `AZURE_SUBSCRIPTION_ID`
- `AZURE_VM_ADMIN_USERNAME`
- `AZURE_VM_ADMIN_PASSWORD`

The Azure identity must also have `Storage Blob Data Contributor` on the Terraform state storage account and `Contributor` on the target subscription.

Create the Terraform state resource group, storage account, and container before the first workflow run. The backend configuration in [Terraform/backend.tf](Terraform/backend.tf) expects a storage account named `stgacttfstatedemo01` in the resource group `rg-sai-az-demo` with container `tfstate01`.

## Workflow use

Open the GitHub Actions tab and run the `Terraform Azure` workflow manually. Select `plan` to preview changes or `apply` to create the VM.

## Local use

```powershell
Set-Location Terraform
az login
$env:ARM_USE_CLI = "true"
terraform init
terraform plan -var="admin_password=YourStrongPassword123!"
```

The deployment creates one Ubuntu VM, a virtual network, subnet, public IP, and network security group in the existing resource group.