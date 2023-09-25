terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {}

resource "github_repository" "repo" {
  name        = var.repo_name
  description = "My awesome codebase"
  visibility = "public"
}

resource "github_repository_file" "file" {
  #condition ? true_val : false_val
  count = var.create_file_in_repo ? 1 : 0


  repository          = github_repository.repo.name
  file                = "test"
  content             = "Test contents"
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform User"
  commit_email        = "terraform@example.com"
  overwrite_on_create = var.overwrite_on_create
}