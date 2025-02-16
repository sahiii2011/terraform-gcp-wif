terraform {
backend "gcs" {
  bucket = "backend-storage1"
  prefix = "tf/state"
}
}
