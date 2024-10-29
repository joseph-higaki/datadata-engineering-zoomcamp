terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.8.0"
    }
  }
}

provider "google" {
  project = "de-zoomcamp-jhigaki-course" 
  region = "europe-southwest1"
  credentials = "/workspaces/data-engineering-zoomcamp/.gcp.auth/de-zoomcamp-jhigaki-course-68ab014c1efe.json"
}

resource "google_storage_bucket" "demo-joseph-auto-expire-bucket" {
  name          = "de-zoomcamp-jhigaki-course-demo-joseph-auto-expire-bucket"
  location      = "europe-southwest1"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}