terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.46.0" # You can specify a version range
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.4.3" # You can specify a version range
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4" # You can specify a version range
    }
    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.2.0" # You can specify a version range
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.16.1" # You can specify a version range
    }
  }
  backend "s3" {
    bucket = "terraform-anosa"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
  required_version = ">= 1.3" # Specify the Terraform version you want to use
}
  