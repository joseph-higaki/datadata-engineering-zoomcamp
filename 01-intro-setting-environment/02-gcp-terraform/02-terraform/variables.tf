variable "project" {
    description = "Project"
    default = "de-zoomcamp-jhigaki-course"
}

variable "location" {
    description = "Project location"
    default = "EU"
}

variable "credentials" {
    description = "Project credentials"
    default = "/workspaces/data-engineering-zoomcamp/.gcp.auth/de-zoomcamp-jhigaki-course-68ab014c1efe.json"
}

variable "bq_dataset_name" {
    description = "Bigquery dataset name"
    default = "de_zoomcamp_jhigaki_course_demo_dataset"    
}

variable "gcs_bucket_name" {
    description = "Bucket name"
    default = "de-zoomcamp-jhigaki-course-demo-joseph-auto-expire-bucket"    
}