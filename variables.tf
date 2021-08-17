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