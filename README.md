# Azure Terraform

This repository provisions an Azure resource group through Terraform and GitHub Actions.

## GitHub setup

Create an Azure AD app registration or user-assigned managed identity with a federated credential for this repository. Grant it `Contributor` on the target subscription, then add these repository secrets:

- `AZURE_CLIENT_ID`
- `AZURE_TENANT_ID`
- `AZURE_SUBSCRIPTION_ID`
- `TFSTATE_RESOURCE_GROUP`
- `TFSTATE_STORAGE_ACCOUNT`
- `TFSTATE_CONTAINER`

Create the state resource group, storage account, and private blob container before the first workflow run. The identity must have `Storage Blob Data Contributor` on the state storage account and `Contributor` on the target subscription.

Create a GitHub `production` environment and add required reviewers before allowing `main` to apply changes. Pull requests use the `pull-request` environment.

## Local use

```powershell
Set-Location Terraform
az login
$env:ARM_USE_CLI = "true"
terraform init
terraform plan
```

Pushes to `main` run `terraform apply`. Pull requests run a plan only.