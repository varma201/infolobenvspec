terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 5.0.0"
    }
  }

  backend "http" {
    address       = "https://objectstorage.us-chicago-1.oraclecloud.com/p/m8KCNGhBDpGKBQ83aDAfPeQ1XbmlsJkFvt9tBWsKdpYA0p_0l0UMJsMKHrhtOL6e/n/axgk4zcjyogn/b/tfstate-infolob-foundation/o/foundation/terraform.tfstate"
    update_method = "PUT"
  }
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}

