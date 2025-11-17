output "pr_trigger_name" {
  description = "Name of the created Cloud Build trigger"
  value       = google_cloudbuild_trigger.pr_trigger.name
}

output "pr_trigger_id" {
  description = "ID of the created Cloud Build trigger"
  value       = google_cloudbuild_trigger.pr_trigger.trigger_id
}
