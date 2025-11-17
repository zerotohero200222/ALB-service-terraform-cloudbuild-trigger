###############################################
# Cloud Build PR Trigger
###############################################

resource "google_cloudbuild_trigger" "pr_trigger" {
  name        = var.pr_trigger_name
  description = "PR-triggered Cloud Build that deploys load balancer components"

  github {
    owner = split("/", var.repository_name)[0]
    name  = split("/", var.repository_name)[1]

    pull_request {
      branch           = var.base_branch_regex
      comment_control  = "COMMENTS_ENABLED"
    }
  }

  # Cloud Build file location
  filename = var.cloudbuild_yaml_path

  # Cloud Build SA
  service_account = var.trigger_service_account
}
