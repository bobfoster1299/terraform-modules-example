By Rob Foster

Updated 09/11/2020

# Introduction
This project contains terraform code for creating a resource group and app service in Azure. It contains two separate modules - one for the resource group and one for the app service. 

The terraform state files are stored remotely in a storage account in Azure rather than locally. The details of the storage account are declared in the backend resource in environments/test/main.tf

The variables are set in the environments/test/terraform.tfvars file. This file will pass the variables to the modules.

# Instructions
Follow these steps to create the resources.

Log in to Azure:
```
az login
```
Clone the repo:
```
git clone git@github.com:bobfoster1299/terraform-modules-example.git
```
Change into the directory where the main.tf file resides:
```
cd terraform-modules-example/environments/test
```
Initialize the working directory:
```
terraform init
```
Check the code:
```
terraform plan
```
If all looks OK, create the resources:
```
terraform apply
```
Once finished, destroy the resources:
```
terraform destroy
```



