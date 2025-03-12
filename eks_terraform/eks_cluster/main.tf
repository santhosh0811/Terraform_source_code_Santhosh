resource "aws_eks_cluster" "santhosh-cluster" {
name = var.cluster_name
role_arn = "arn:aws:iam::343218218692:role/eks_cluster_role"
vpc_config {
subnet_ids = var.subnet_ids
}
}
output "cluster_name" {
value = aws_eks_cluster.santhosh-cluster.name
}