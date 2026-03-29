variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = "v1-mvp"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-east1"
}

variable "cluster_name" {
  description = "GKE cluster name"
  type        = string
  default     = "ppa-dun-cluster"
}

variable "vpc_name" {
  description = "VPC network name"
  type        = string
  default     = "vpc-gke"
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
  default     = "subnet-gke"
}

variable "subnet_cidr" {
  description = "Subnet CIDR range"
  type        = string
  default     = "10.50.0.0/20"
}
