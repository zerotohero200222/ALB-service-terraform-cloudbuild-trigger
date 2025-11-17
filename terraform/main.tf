resource "google_cloudbuild_trigger" "github_push_trigger" {
  project     = var.project_id
  location    = "us-central1"
  name        = var.trigger_name
  description = "Cloud Build GitHub App trigger for main branch"

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
