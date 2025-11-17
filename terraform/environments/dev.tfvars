project_id = "eastern-augury-477909-q6"
region     = "us-central1"

pr_trigger_name = "deploy-trigger-via-pr-dev"

repository_name     = "zerotohero200222/ALB-service-terraform-cloudbuild"
base_branch_regex   = "^main$"

trigger_service_account = "162720148859-compute@developer.gserviceaccount.com"
cloudbuild_yaml_path = "cloudbuild.yaml"
