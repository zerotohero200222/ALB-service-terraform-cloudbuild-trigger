output "pr_trigger_id" {
  description = "ID of the created Cloud Build PR trigger"
  value       = google_cloudbuild_trigger.pr_trigger.id
}

output "pr_trigger_name" {
  description = "Name of the created Cloud Build PR trigger"
  value       = google_cloudbuild_trigger.pr_trigger.name
}
