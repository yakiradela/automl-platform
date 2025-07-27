output "cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group IDs associated with the cluster"
  value       = module.eks.cluster_security_group_id
}

output "s3_bucket_name" {
  value = aws_s3_bucket.csv_data.id
}

output "ecr_api_repo_url" {
  value = aws_ecr_repository.api.repository_url
}

output "ecr_trainer_repo_url" {
  value = aws_ecr_repository.trainer.repository_url
}
