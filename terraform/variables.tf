variable "project_id" { type = string }
variable "trigger_name" { type = string }

variable "github_owner" { type = string }
variable "github_repo" { type = string }

variable "branch_regex" {
  type    = string
  default = "^main$"
}

variable "cloudbuild_yaml_path" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "environment" { type = string }

variable "trigger_service_account" { type = string }


