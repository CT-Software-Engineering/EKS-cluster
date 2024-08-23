variable "region" {
  type        = string
  description = "The AWS region to create resources in."
}

variable "cidr_block" {
  type        = string
  description = "CIDR block for the VPC."
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnet CIDR blocks."
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones."
}

variable "name" {
  type        = string
  description = "Name to tag resources."
}
