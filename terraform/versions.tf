terraform {
  required_version = ">= 1.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.34"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.10"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.22"
    }
  }

  #  Used for end-to-end (e2e) testing - TODO:: enable once testing is done 
  # backend "s3" {
  #   bucket = "terraform-ssp-actions-state"
  #   region = "us-east-1"
  #   key    = "e2e/it-core-infrastructure/terraform.tfstate"
  # }
}
