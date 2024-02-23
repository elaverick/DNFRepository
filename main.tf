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
    #Set GITHUB_TOKEN Environment variable
}

resource "github_repository" "repository" {
  name        = var.name
  description = var.description

  visibility = "public"
  auto_init =  true

  pages {
    cname = var.cname
    source {
      branch = "main"
      path   = "/"
    }
  }

   provisioner "local-exec" {
    command = "./createRepo.sh"

    environment = {
      REPO_URL = self.ssh_clone_url
    }
   }

   provisioner "local-exec" {
    when = destroy
    command = "rm -r --force repo && rm --force firstrun.lck"
  }
    
}