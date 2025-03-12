provider "aws" {
region = "ap-south-1"
}
module "EKS_Cluster" {
source = "./eks_cluster"
cluster_name = var.name
subnet_ids = var.subnet_ids
}
module "EKS_Node"{
source = "./eks_nodes"
cluster_name = module.EKS_Cluster.cluster_name
desired_size = "3"
maxvalue = "10"
minvalue = "3"
instance_type = "t2.micro"
subnet_ids = var.subnet_ids
depends_on = [ module.EKS_Cluster ]
}