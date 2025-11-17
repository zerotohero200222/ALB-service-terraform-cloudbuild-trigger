resource "google_cloudbuild_trigger" "pr_trigger" {
  name        = var.pr_trigger_name
  description = "PR-trigger that deploys Cloud Build CI/CD triggers using Terraform"
  location    = var.region

  pull_request {
    branch          = var.base_branch_regex   # ^feature_01$
    comment_control = "COMMENTS_ENABLED"      # Requires /gcbrun
  }

  source_to_build {
    repo_type  = "CLOUD_SOURCE_REPOSITORIES"
    repository = var.repository_name
    uri        = "cloudbuild_prbuild.yaml"
  }

  service_account = var.trigger_service_account
}
