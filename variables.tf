
variable "vpc_name" {
  type = string
  description = "vpc name"
  default = "eks_vpc"
}
variable "vpc_cidr" {
  type = string
  description = "VPC Subnet CIDR value"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDR values"
}

variable "cluster_name" {
  type = string
  description = "EKS cluster name"
  default = "my_eks_cluster"
}
variable "cluster_version" {
  type = string
  default = "1.28"
}
variable "instance_type" {
   type = string
   default = "t2.micro"
}
