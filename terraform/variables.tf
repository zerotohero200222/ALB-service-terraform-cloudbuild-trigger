variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region for the trigger"
  type        = string
  default     = "us-central1"
}

variable "pr_trigger_name" {
  description = "Name of the PR Cloud Build trigger"
  type        = string
}

variable "repository_name" {
  description = "Cloud Build repository connected to GitHub"
  type        = string
}

variable "base_branch_regex" {
  description = "Branch regex that PR must target"
  type        = string
}

variable "trigger_service_account" {
  description = "Service account that executes Cloud Build"
  type        = string
}
