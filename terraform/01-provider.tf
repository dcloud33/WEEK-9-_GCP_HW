terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.31.0" 
    }
  }
}

provider "google" {
  project = "seir-1-domain"
  region  = "us-east1"
  
}
