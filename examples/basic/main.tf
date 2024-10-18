#####################################################################################
# Terraform module examples are meant to show an _example_ on how to use a module
# per use-case. The code below should not be copied directly but referenced in order
# to build your own root module that invokes this module
#####################################################################################
variable "region" {
  type        = string
  description = "AWS region to deploy the resources"
  default     = "us-east-1"
}

provider "aws" {
  region = var.region
}

provider "awscc" {
  region = var.region
}

module "terraform-agents" {
  source = "../.." # local example
  create_kb = false
  create_default_kb = false
  foundation_model = "anthropic.claude-v2"
  instruction = "you are a chatbot eager to help the user find a new car."
}