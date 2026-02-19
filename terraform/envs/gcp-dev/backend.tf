
terraform {
  backend "gcs" {
    bucket = "tfstate-nouha-pfe-20260218-48392"
    prefix = "gcp-dev"
  }
}
