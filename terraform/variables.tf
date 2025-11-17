variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "region" {
  type        = string
  description = "GCP region"
  default     = "us-central1"
}

variable "pr_trigger_name" {
  type        = string
  description = "Name of the PR Cloud Build trigger"
}

variable "repository_name" {
  type        = string
  description = "Github repo in <owner>/<repo> format"
}

variable "base_branch_regex" {
  type        = string
  description = "Regex for PR base branch"
}

variable "trigger_service_account" {
  type        = string
  description = "Service account used by Cloud Build"
}

variable "cloudbuild_yaml_path" {
  type        = string
  description = "Cloud Build file path"
  default     = "cloudbuild.yaml"
}
