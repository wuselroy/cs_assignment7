# Week 7 IaC - OpenTofu & OpenStack (cPouta)

This project contains Infrastructure as Code (IaC) configurations using **OpenTofu** (or Terraform) to provision resources on cPouta (OpenStack).

## Prerequisites

Ensure you have the following installed:
* [OpenTofu](https://opentofu.org/) or Terraform
* Access to the cPouta OpenStack environment with your credentials file (`clouds.yaml` or environment variables set).

## Configuration

1. **Copy the example configuration:**
   Find the example variable file (e.g., `terraform.tfvars.example` or similar) and copy it to create your active configuration file:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

2. **Customize your settings:**
   Open `terraform.tfvars` and update it with your own specific values (such as image names, flavor types, SSH keys, or network names).

## Usage with OpenTofu

Once your configuration is ready, run the following commands in your project directory:

1. **Initialize the workspace** (downloads required providers):
   ```bash
   tofu init
   ```

2. **Preview the changes** (check what will be created):
   ```bash
   tofu plan
   ```

3. **Apply the configuration** (create the infrastructure):
   ```bash
   tofu apply
   ```

4. **Destroy the infrastructure** (when you are done):
   ```bash
   tofu destroy
   ```