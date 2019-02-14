
# Specify the provider (GCP, AWS, Azure)
provider "google" {
    credentials = "${file("../cg-research-terraform-account-78b0ba954ce4.json")}"
    project = "cg-research"
    region = "asia-southeast1"
}
