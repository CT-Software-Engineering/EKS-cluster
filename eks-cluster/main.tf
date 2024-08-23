provider "aws" {
  region = var.region
}
terraform {
/*
  backend "s3" {
    bucket         = "terraform-state-awake"
    key            = "johannesburg/terraform.tfstate"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "my-lock-table"  # Optional, for state locking
  }
}
*/
}
module "vpc" {
  source             = "./modules/vpc"
  region             = var.region
  cidr_block         = var.vpc_cidr
  public_subnets     = var.public_subnets
  availability_zones = var.availability_zones
  name               = var.name
}

module "eks" {
  source          = "./modules/eks"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnets         = module.vpc.public_subnets
  vpc_id          = module.vpc.vpc_id
  key_name        = var.key_name
}

