resource "google_storage_bucket" "my_bucket1" {
  location                        = "us-central1" # Replace with your desired region
  name                            = "bucket1" # Bucket names must be globally unique
  project                         = "red-abstraction-446113-u1" # Your Project ID
  force_destroy                   = false # Use with caution in production!
  uniform_bucket_level_access = true # Recommended for security
  public_access_prevention      = "enforced" # Correct syntax
}
  
