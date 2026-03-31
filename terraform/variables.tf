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

# ── Secret values (no defaults, must be provided) ───────────────────

variable "mysql_root_password" {
  description = "MySQL root password"
  type        = string
  sensitive   = true
}

variable "mysql_database" {
  description = "MySQL database name"
  type        = string
  sensitive   = true
}

variable "google_client_id" {
  description = "Google OAuth client ID"
  type        = string
  sensitive   = true
}

variable "external_api_key" {
  description = "External API key"
  type        = string
  sensitive   = true
}

variable "external_api_base_url" {
  description = "External API base URL"
  type        = string
  sensitive   = true
}
