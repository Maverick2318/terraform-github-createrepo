terraform {
    required_version = "~> 1.5"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

module "github_repo_module" {
    source = "../../"

    repo_name = "thebestrepo"
    overwrite_on_create = false
    name_of_file = "thebestfileever.txt"
    contents_of_file = "This is the best file ever!"
    create_file_in_repo = true
    repo_visibility = "private"
}