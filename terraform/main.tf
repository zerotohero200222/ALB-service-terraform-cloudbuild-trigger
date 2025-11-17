terraform {
  required_version = ">= 1.3.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
}

resource "google_cloudbuild_trigger" "pr_trigger" {
  project     = var.project_id
  name        = var.trigger_name
  description = "Cloud Build GitHub App trigger managed by Terraform"
  location    = var.region

  trigger_template {
    project_id  = var.project_id
    repo_name   = var.repo_name
    branch_name = var.branch_name
  }

  source_to_build {
    repo_source {
      project_id  = var.project_id
      repo_name   = var.repo_name
      branch_name = var.branch_name
    }
  }

  filename = var.cloudbuild_yaml_path

  substitutions = {
    "_ENV" = var.environment
  }

  service_account = var.trigger_service_account
}
