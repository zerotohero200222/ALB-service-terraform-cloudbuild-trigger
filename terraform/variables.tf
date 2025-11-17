variable "project_id" {
  description = "GCP project where the Cloud Build trigger lives"
  type        = string
}

variable "trigger_name" {
  description = "Name of the Cloud Build trigger"
  type        = string
}

variable "github_owner" {
  description = "GitHub organization or user name"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name (without owner)"
  type        = string
}

variable "branch_regex" {
  description = "Regex for branch that triggers the build (e.g. ^main$)"
  type        = string
  default     = "^main$"
}

variable "cloudbuild_yaml_path" {
  description = "Path to cloudbuild config in the repo"
  type        = string
  default     = "cloudbuild.yaml"
}

variable "environment" {
  description = "Environment label (dev/uat/prod)"
  type        = string
}

variable "trigger_service_account" {
  description = "Service account email used to execute the build"
  type        = string
}
