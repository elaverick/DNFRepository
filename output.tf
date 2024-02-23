output "ssh_clone_url" {
  value = github_repository.repository.ssh_clone_url
  description = "URL that can be provided to git clone to clone the repository via SSH."
}

output "next_steps" {
    value = var.cname != null && !fileexists("firstrun.lck") ? "Please re-run terraform apply to set a CNAME for your repository":null
}