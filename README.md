
# Deploying Google Cloud Storage Bucket with Workload Identity Federation (WIF)

This repository demonstrates how to deploy a Google Cloud Storage bucket using Terraform and GitHub Actions, leveraging Workload Identity Federation (WIF) for secure authentication.  This approach eliminates the need to store service account keys in your repository, enhancing security best practices.

## Prerequisites

Before you begin, ensure you have the following:

1. **Google Cloud Project:** A Google Cloud project with billing enabled.
2. **Workload Identity Federation Setup:**  You must have already configured a Workload Identity Pool and Provider in your Google Cloud project, linking your GitHub repository to a Google Cloud service account.  See the [Google Cloud documentation](https://cloud.google.com/iam/docs/workload-identity-federation) for detailed instructions on setting this up.
3. **Service Account:** A Google Cloud service account that Terraform will impersonate. This service account needs the `storage.objectCreator` permission (or a broader role like `storage.admin`) on your Google Cloud project.
4. **Terraform Installed:** Terraform should be installed locally for development and testing.
5. **gcloud CLI Installed (Optional):** The `gcloud` command-line tool is useful for interacting with Google Cloud services.

## Repository Structure

├── main.tf        # Terraform configuration for the bucket
├── variables.tf   # (Optional) Variable definitions
├── outputs.tf     # (Optional) Output variable definitions
└── .github/workflows/terrafrom-gif.yml # GitHub Actions workflow
