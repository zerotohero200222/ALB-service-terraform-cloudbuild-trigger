resource "google_cloudbuild_trigger" "pr_trigger" {
  project     = var.project_id
  name        = var.trigger_name
  description = "Cloud Build GitHub App trigger managed by Terraform"

  # GitHub App trigger (not Cloud Build Repository v2)
  github {
    owner = var.github_owner
    name  = var.github_repo

    push {
      branch = var.branch_regex
    }
  }

  # Use the cloudbuild.yaml in this repo
  filename = var.cloudbuild_yaml_path

  # Pass environment into the build as a substitution
  substitutions = {
    "_ENV" = var.environment
  }

  # Service account used by Cloud Build to run the steps
  service_account = var.trigger_service_account
}
