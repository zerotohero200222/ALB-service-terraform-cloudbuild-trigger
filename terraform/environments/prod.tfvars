project_id = "eastern-augury-477909-q6"

trigger_name = "ALB-buildtrigger-prod"

repo_name    = "zerotohero200222/ALB-service-terraform-cloudbuild-trigger"
branch_regex = "^main$"

environment = "prod"

trigger_service_account = "service-account@prod-prj-frontend-apps.iam.gserviceaccount.com"
