provider "kubernetes" {
  host = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_autouristi_data)
}

provider "aws" {
  region = var.region
}

data "aws_availability_zones" "availabale" {
  
}

locals {
  cluster_name = var.cluster_name
}