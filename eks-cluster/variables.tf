variable "region" {
  type        = string
  default     = "eu-west-1"
  description = "The AWS region to deploy the infrastructure."
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR block for the VPC."
}

variable "public_subnets" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
  description = "List of public subnet CIDR blocks."
}

variable "availability_zones" {
  type        = list(string)
  default     = ["eu-west-1a", "eu-west-1b"]
  description = "List of availability zones."
}

variable "name" {
  type        = string
  default     = "my-eks-cluster"
  description = "Name to tag resources."
}

variable "cluster_name" {
  type        = string
  default     = "my-eks-cluster"
  description = "Name of the EKS cluster."
}

variable "cluster_version" {
  type        = string
  default     = "1.30"
  description = "EKS cluster version."
}

variable "key_name" {
  type        = string
  default     = "Jenkins"
  description = "EC2 key pair name."
}
