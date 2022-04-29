/*Copyright © 2020, Oracle and/or its affiliates.

The Universal Permissive License (UPL), Version 1.0*/

# # Terraform version
# terraform {
#   required_version = ">=0.13"
#   required_providers {
#     oci = {
#       source  = "hashicorp/oci"
#       version = "=3.93.0"
#     }
#   }
# }

terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
      version = "4.73.0"
    }
  }
}


# Oracle Cloud Infrastructure (OCI) Provider
provider "oci" {
  tenancy_ocid = var.tenancy_id
  user_ocid        = var.user_id
  private_key_path = var.api_private_key_path
  fingerprint      = var.api_fingerprint
  region = var.region_name
}
