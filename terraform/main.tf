resource "google_cloudbuild_trigger" "pr_trigger" {
  project     = var.project_id
  name        = var.trigger_name
  description = "Cloud Build Repo trigger (Terraform managed)"
  location    = "us-central1"

  source_to_build {
    repo_source {
      project_id  = var.project_id
      repo_name   = var.repo_name
      branch_name = "main"
    }
  }

  filename = var.cloudbuild_yaml_path

  substitutions = {
    "_ENV" = var.environment
  }

  service_account = var.trigger_service_account
}
