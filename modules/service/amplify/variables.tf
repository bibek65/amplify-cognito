variable "repository" {
  type        = string
  description = "github repo url"
}
variable "token" {
  type = string
  description = "github token to connect github repo"
}


variable "branch_name" {
  type        = string
  description = "AWS Amplify App Repo Branch Name"
  default = "main"
}


variable "namespace" {
  type        = string
  description = "Namespace, which could be your organization name, e.g. 'eg' or 'cp'"
  default = "project"
}


variable "stage" {
  type        = string
  description = "Stage Eg: `dev`"
  default = "dev"
}

variable "name" {
  type        = string
  description = "Name of service"
  default = "amplify"
}
variable "aws_region" {
  type = string
  description = "AWS Region"
}
variable "user_pool_id" {
  type = string
  description = "User Pool ID"
}
variable "user_pool_client_id" {
  type = string
  description = "User Pool Client ID"
}
variable "user_identity_pool_id" {
  type = string
  description = "User Identity Pool ID"
}

