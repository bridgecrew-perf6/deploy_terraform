provider "mongodbatlas" {
  public_key    = var.atlas_public_key
  private_key   = var.atlas_private_key 
}

# Create a Project
resource "mongodbatlas_project" "mongo_project" {
    name    = var.cluster_name
    org_id  = var.atlas_org_id
}
