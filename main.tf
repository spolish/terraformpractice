terraform {
  backend "gcs" {
    bucket = "k8s-k3s-spolish"
    prefix = "terraform/state"
  }
}

module "gke_cluster" {
  source         = "github.com/spolish/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = var.GKE_NUM_NODES
}