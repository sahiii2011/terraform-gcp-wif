resource "google_storage_bucket" "my-bucket1" {
  location                        = "us-central1" # Replace with your desired region
  name                            = "bucket1" # Bucket names must be globally unique
  project                         = "red-abstraction-446113-u1"
  force_destroy = true
  Public_access_prevention = enforced
  uniform_bucket_level_access = true # Recommended for security

  # Optional settings (uncomment and customize as needed)
   storage_class     = "STANDARD" # Or "NEARLINE", "COLDLINE", "ARCHIVE"
   versioning {
     enabled = true
   }
   lifecycle_rules {
     condition {
       age_greater_than = 30 # Days
     }
     action {
       type = "Delete"
     }
   }
 
