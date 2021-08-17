locals {
  region                                   = var.region
  vpc_name                                 = "${var.name_prefix}-${var.env}-vpc"
  tags = {
    Terraform = "true"
    Environment = var.env
  }
}