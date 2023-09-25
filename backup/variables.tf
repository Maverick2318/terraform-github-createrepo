variable "repo_name" {
    type = string
    description = "The repo name of the Github repo to be created."
    default = "one-repo-to-rule-them-all"
    sensitive = false
}

variable "existing_repo_name" {
    type = string
    description = "The name of an existing repo to add a file to."
}

variable "overwrite_on_create" {
    type = bool
    description = "Do you want to overwrite the file on creation? True/False"
    default = "true"
}

variable "create_file_in_repo" {
    type = bool
    description = "Create a file in the repo? True/False"
}