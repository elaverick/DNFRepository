variable "name" {
  type = string
  default = "repository"
  description = "The name of your repositiory"
}

variable "description" {
    type = string
    default = "DNF Main Repository"
    description = "A description for your repository"
}

variable "cname" {
    type = string
    default = null
    description = "The CNAME for your repository (optional)"
}