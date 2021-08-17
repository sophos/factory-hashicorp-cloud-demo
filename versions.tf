terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "refactr"

    workspaces {
      prefix = "erde-"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.50.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 1.4"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 1.11"
    }
  }

  required_version = ">= 1.0.0"
}