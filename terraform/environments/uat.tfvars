project_id = "eastern-augury-477909-q6"

trigger_name = "ALB-buildtrigger-uat"

repo_name    = "zerotohero200222/ALB-service-terraform-cloudbuild-trigger"
branch_regex = "^main$"

environment = "uat"

trigger_service_account = "service-account@uat-prj-frontend-apps.iam.gserviceaccount.com"
