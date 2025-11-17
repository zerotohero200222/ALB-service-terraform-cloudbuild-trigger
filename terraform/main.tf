terraform {
  required_version = ">= 1.3"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = "us-central1"
}

resource "google_cloudbuild_trigger" "pr_trigger" {
  project     = var.project_id
  name        = var.trigger_name
  description = "Cloud Build GitHub OAuth trigger (Terraform managed)"
  location    = "global"

  github {
    owner = var.github_owner
    name  = var.github_repo

    push {
      branch = var.branch_regex
    }
  }

  filename = var.cloudbuild_yaml_path

  substitutions = {
    "_ENV" = var.environment
  }

  service_account = var.trigger_service_account
}
