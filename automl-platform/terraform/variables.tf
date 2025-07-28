variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "automl-eks-cluster"
}

variable "node_group_name" {
  description = "Name of the node group"
  type        = string
  default     = "automl-nodes"
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket to create"
  type        = string
  default     = "automl-platform-csv-data"
}

variable "environment" {
  description = "Deployment environment (e.g. dev, staging, prod)"
  type        = string
  default     = "dev"
}

