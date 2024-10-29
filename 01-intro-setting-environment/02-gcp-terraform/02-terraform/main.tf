terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.8.0"
    }
  }
}

provider "google" {
  project = var.project
  region = "europe-southwest1"
  credentials = var.credentials
}

resource "google_bigquery_dataset" "demo_dataset" {
  dataset_id                  = var.bq_dataset_name
  friendly_name               = "Demo Dataset Friendly Name"
  description                 = "Demo Dataset Longer description"
  location                    = var.location
  delete_contents_on_destroy = "true"
}


resource "google_storage_bucket" "demo-joseph-auto-expire-bucket" {
  name          = var.gcs_bucket_name
  location      = var.location
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
