variable "region" {
  description = "AWS region"
  default     = "us-west-2"
  type = string
}

variable "aws_account_id" {
  description = "AWS Account ID"
  type = string
}

variable "env" {
  description = "Environment (will be included in resource names and tags)"
  default     = "devel"
  type = string
}

variable "name_prefix" {
  description = "The name prefix for all resources"
  default     = "erde"
  type = string
}

variable "vpc_azs" {
  description = "Availability zones for VPC"
  type    = list(string)
  default = ["us-west-2a", "us-west-2b"]
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_private_subnets" {
  description = "Private subnets for VPC"
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "vpc_public_subnets" {
  description = "Public subnets for VPC"
  type    = list(string)
  #default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  default = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT gateway for VPC"
  type        = bool
  default     = true
}

variable "vpc_enable_vpn_gateway" {
  description = "Enable VPN gateway for VPC"
  type        = bool
  default     = true
}

variable "bucket_acl" {
  type    = string
  default = "private"
}




############### EKS ###############
variable "eks_map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth configmap."
  type        = list(string)

  default = [
    "777777777777",
    "888888888888",
  ]
}

variable "eks_map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      rolearn  = "arn:aws:iam::66666666666:role/role1"
      username = "role1"
      groups   = ["system:masters"]
    },
  ]
}

variable "eks_map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      userarn  = "arn:aws:iam::66666666666:user/user1"
      username = "user1"
      groups   = ["system:masters"]
    },
    {
      userarn  = "arn:aws:iam::66666666666:user/user2"
      username = "user2"
      groups   = ["system:masters"]
    },
  ]
}

variable "eks_enable_irsa" {
  description = "Whether to create OpenID Connect Provider for EKS to enable IRSA"
  type        = bool
  default     = true
}

variable "kubeconfig_output_path" {
  description = "Where to save the Kubectl config file (if `write_kubeconfig = true`). Assumed to be a directory if the value ends with a forward slash `/`."
  type        = string
  default     = "./"
}


############### kubernetes ###############
variable "kube_config" {
  type = string
  #default = "~/.kube/config"
  default = "/home/vagrant/.kube/config"
}

variable "namespace" {
  type = string
  default = "refactr-platform"
}

variable "alb_service_account_name" {
  type = string
  default = "aws-load-balancer-controller"
}