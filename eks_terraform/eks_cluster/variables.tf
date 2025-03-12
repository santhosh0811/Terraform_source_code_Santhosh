variable "cluster_name" {
  description = "The name of the EKS cluster to be created"
  type        = string
}

variable "subnet_ids" {
  description = "The subnet IDs to use for the EKS cluster for high availability (HA)"
  type        = list(string)
}