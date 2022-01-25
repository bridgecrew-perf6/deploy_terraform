## Example `main.tf`:
## The configuration for the `remote` backend.
terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "example-organizat
    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "example-workspace"
    }
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
}

provider "mongodbatlas" {
  public_key    = "EPXIYGEQ"
  private_key   = "0f089e81-01ed-4e21-a0a6-7a1fdedcc8dd"
}

# Create a Project
resource "mongodbatlas_project" "mongo_project" {
    name    = "var_cluster_name_1"
    org_id  = "5e384d3179358e03d842ead1"
}
