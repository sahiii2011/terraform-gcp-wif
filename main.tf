resource "google_storage_bucket" "my_bucket1" {
  location                        = "us-central1" # Replace with your desired region
  name                            = "bucket1" # Bucket names must be globally unique
  project                         = "red-abstraction-446113-u1" # Your Project ID
  force_destroy                   = false # Use with caution in production!
  uniform_bucket_level_access = true # Recommended for security
  public_access_prevention      = "enforced" # Correct syntax

  # Optional settings (uncomment and customize as needed)
  storage_class = "STANDARD" # Or "NEARLINE", "COLDLINE", "ARCHIVE"
  versioning {
    enabled = true
  }
  lifecycle_rule {  # Corrected block
    condition {
      age_greater_than = 30 # Days
    }
    action {
      type = "Delete"
    }
  }
}

resource "random_id" "bucket_prefix" {
 byte_length = 8 # Generates a random hex string
}
 
