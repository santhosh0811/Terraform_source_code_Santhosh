variable "cluster_name" {
  description = "Enter the name of the EKS cluster"
  type        = string
}

variable "node_groupname" {
  description = "Enter the name of the node group"
  default     = "santhosh-node-group"
  type        = string
}

variable "subnet_ids" {
  description = "Enter the Subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "desired_size" {
  description = "Enter the desired size (number of instances) for the node group"
  type        = number
}

variable "maxvalue" {
  description = "Enter the maximum number of instances for auto-scaling"
  type        = number
}

variable "minvalue" {
  description = "Enter the minimum number of instances that should be maintained in the auto-scaling group"
  type        = number
}

variable "instance_type" {
  description = "Enter the instance type for the node group"
  type        = string
}