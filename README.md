# Infrastructure as Code with Terraform

This project contains Terraform code for provisioning and managing an Amazon Web Services (AWS) infrastructure for an Amazon Elastic Kubernetes Service (EKS) cluster. The infrastructure includes a Virtual Private Cloud (VPC), EKS cluster and it's security group rules, and managed node groups.

## Prerequisites

Before using this Terraform configuration, ensure that you have the following prerequisites in place:

- Terraform installed on your local machine.
- AWS credentials configured with the necessary permissions.
- Define your variables in a `.tfvars` file (e.g., `terraform.tfvars`).

# Steps to reproduce

To apply the code, follow these steps:
1. configure your aws credentials using aws-cli
   ```
   $ aws configure
    AWS Access Key ID [None]: accesskey
    AWS Secret Access Key [None]: secretkey
    Default region name [None]: us-west-2
    Default output format [None]:
   ```
2. Configure backend.tf file to host statefile remotly (Optional)
3. Create your workspace for your environment (Optional)
   ```
    terraform workspace new WorkspaceName
   ```

4. Adjust the variables files (variables.tf , variables.tfvars , dev_vars.tfvars , production_vars.tfvars, ...)   
5. Run the following commands:

```
terraform init
terraform plan -var-file ./variables.tfvars
terraform apply -var-file ./variables.tfvars
```