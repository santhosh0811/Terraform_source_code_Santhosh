resource "aws_eks_node_group" "santhosh-nodegroup" {
cluster_name = var.cluster_name
node_group_name = var.node_groupname
node_role_arn = "arn:aws:iam::343218218692:role/ec2_nodes_roles"
subnet_ids = var.subnet_ids
disk_size = "20"
scaling_config {
desired_size = var.desired_size
max_size = var.maxvalue
min_size = var.minvalue
}
instance_types = [var.instance_type]
ami_type = "AL2_x86_64"
#depends_on = [ aws_eks_cluster.santhosh_EKS_Cluster ]
}