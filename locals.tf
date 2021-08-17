locals {
  region                                   = var.region
  vpc_name                                 = "${var.name_prefix}-${var.env}-vpc"
  bucket_name                              = "${var.name_prefix}-${var.env}-bucket"
  ecr_name                                 = "${var.name_prefix}-${var.env}-ecr"
  cluster_name                             = "${var.name_prefix}-${var.env}-cluster"
  iam_policy_load_balancer_controller_name = "${var.name_prefix}-${var.env}-load-balancer-controller-policy"
  iam_role_k8s_oidc                        = "${var.name_prefix}-${var.env}-k8s-oidc"
  tags = {
    Terraform = "true"
    Environment = var.env
  }
}