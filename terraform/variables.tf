variable "project_id" {
  type = string
}

variable "trigger_name" {
  type = string
}

variable "repo_name" {
  description = "Full Cloud Build repository identifier"
  type        = string
}

variable "cloudbuild_yaml_path" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "environment" {
  type = string
}

variable "trigger_service_account" {
  type = string
}

