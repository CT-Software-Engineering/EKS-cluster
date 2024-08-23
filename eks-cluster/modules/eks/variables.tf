variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster."
}

variable "cluster_version" {
  type        = string
  description = "EKS cluster version."
}

variable "subnets" {
  type        = list(string)
  description = "Subnets to deploy the EKS cluster."
}

variable "vpc_id" {
  type        = string
  description = "VPC ID to deploy the EKS cluster."
}

variable "key_name" {
  type        = string
  description = "EC2 key pair name."
}
