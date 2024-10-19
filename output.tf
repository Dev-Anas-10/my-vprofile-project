output "cluster_name" {
  value       = module.eks.cluster_name
  description = "The name of the EKS cluster"
}

output "cluster_endpoint" {
  value       = module.eks.cluster_endpoint
  description = "The endpoint for the EKS cluster"
}

output "cluster_certificate_authority_data" {
  value       = module.eks.cluster_certificate_authority_data
  description = "The certificate authority data for the EKS cluster"
}

output "node_group_names" {
  value       = [for group in module.eks.eks_managed_node_groups : group.name]
  description = "The names of the EKS managed node groups"
}

output "node_group_instance_types" {
  value       = [for group in module.eks.eks_managed_node_groups : group.instance_types]
  description = "The instance types of the EKS managed node groups"
}

output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "The VPC ID where the EKS cluster is deployed"
}

output "subnet_ids" {
  value       = module.vpc.private_subnets
  description = "The IDs of the private subnets used by the EKS cluster"
}
