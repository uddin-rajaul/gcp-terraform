provider "google" {
  project     = "terraform-gcp-456517" # check project id from home dashboard
  region      = "us-central1"
  credentials = "key.json"  
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.29.0"
    }
  }
}

resource "google_storage_bucket" "gcsfirst" {
  name          = "a-cloud-pipeline"
  location      = "us-central1"
  
  public_access_prevention = "enforced"
}