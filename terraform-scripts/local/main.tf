resource "local_sensitive_file" "tffilesensitive" {
  content  = "I am learning GCP"
  filename = "TF with gcp.txt"
}