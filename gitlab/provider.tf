terraform {
  required_providers {
    gitlab = {
      source = "gitlabhq/gitlab"
      version = "3.6.0"
    }
  }
}

# Configure the GitLab Provider
provider "gitlab" {
  token = var.gitlab_token
  base_url = var.base_url
}

# Add a project owned by the user
resource "gitlab_project" "admin-project" {
  name = "admin-project"
}

resource "gitlab_project" "admin-project-sub" {
  name = "admin-project-submodule"
  namespace_id = gitlab_project.admin-project.id
}

resource "gitlab_user" "user_fedor" {
  name             = "Fedor"
  username         = "fedor"
  password         = "12345678"
  email            = "fedor@mail"
  is_admin         = true
  can_create_group = false
  is_external      = true
  reset_password   = false
}

resource "gitlab_group_membership" "developers" {
  group_id     = gitlab_group.developers.id
  user_id      = gitlab_user.user_fedor.id
  access_level = "developer"
  expires_at   = "2023-12-31"
}

resource "gitlab_group" "developers" {
  name        = "developers"
  path        = "developers"
  description = "For developers"
}
