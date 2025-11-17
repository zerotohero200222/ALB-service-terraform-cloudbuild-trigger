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
  region  = var.region
}

# ----------------------------------------------------------------------
# PR-based Cloud Build Trigger
# ----------------------------------------------------------------------
resource "google_cloudbuild_trigger" "pr_trigger" {
  name = var.pr_trigger_name
  description = "Auto-deploy Cloud Build trigger on PR to main branch"

  github {
    owner = "zerotohero200222"
    name  = split("/", var.repository_name)[1]

    pull_request {
      branch = var.base_branch_regex
      comment_control = "COMMENTS_ENABLED"
    }
  }

  filename = "cloudbuild.yaml"

  service_account = var.trigger_service_account
}

# ----------------------------------------------------------------------
# Outputs
# ----------------------------------------------------------------------
output "trigger_id" {
  value = google_cloudbuild_trigger.pr_trigger.id
}

output "trigger_name" {
  value = google_cloudbuild_trigger.pr_trigger.name
}
