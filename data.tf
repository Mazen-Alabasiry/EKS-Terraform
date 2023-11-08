data "aws_availability_zones" "azs" {}
data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_name
}
data "aws_eks_cluster" "cluster" {
  name = var.cluster_name
  depends_on = [module.eks.cluster_name]
}