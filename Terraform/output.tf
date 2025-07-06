output "cluster_name" {
  value = module.eks.cluster_name
}

output "kubeconfig" {
  description = "Generate kubeconfig using this command"
  value       = "aws eks update-kubeconfig --name ${module.eks.cluster_name} --region ${var.aws_region}"
}

output "node_group_role_arn" {
  value = module.eks.eks_managed_node_groups.default.iam_role_arn
}