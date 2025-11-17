project_id = "uat-prj-frontend-apps"
region     = "us-central1"

pr_trigger_name = "deploy-trigger-via-pr-uat"

repository_name     = "zerotohero200222/ALB-service-terraform-cloudbuild"
base_branch_regex   = "^main$"

trigger_service_account = "cloudbuild-sa@uat-prj-frontend-apps.iam.gserviceaccount.com"
