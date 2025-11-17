resource "google_cloudbuild_trigger" "pr_trigger" {
  project     = var.project_id
  name        = var.trigger_name
  description = "Cloud Build GitHub App trigger managed by Terraform"
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
