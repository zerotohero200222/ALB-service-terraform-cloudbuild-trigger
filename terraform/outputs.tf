output "pr_trigger_id" {
  value = google_cloudbuild_trigger.pr_trigger.trigger_id
}

output "pr_trigger_name" {
  value = google_cloudbuild_trigger.pr_trigger.name
}
