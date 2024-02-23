output "ssh_clone_url" {
  value = github_repository.repository.ssh_clone_url
  description = "URL that can be provided to git clone to clone the repository via SSH."
}