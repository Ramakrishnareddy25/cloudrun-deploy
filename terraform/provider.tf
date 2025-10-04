terraform {
  required_version = "1.9.6"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.28.0"
    }
  }
}


provider "google" {
  region      = "us-central1"
  credentials = "./key.json"
  project     = "xenon-alliance-465110-v6"
}

terraform {
  backend "gcs" {
    bucket  = "run-sources-xenon-alliance-465110-v6-europe-west2"
    prefix  = "terraform/state"
  }
}
