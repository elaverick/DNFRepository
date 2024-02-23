terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    #Set GITHUB Token Environment variable
}

resource "github_repository" "repository" {
  name        = var.name
  description = var.description

  visibility = public
  auto_init =  true

  pages {
    source {
      branch = "master"
      path   = "/"
    }
  }

   provisioner "local-exec" {
    command = "echo ${self.ssh_clone_url} >> ssh.txt"
  }
}