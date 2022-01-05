terraform {
  required_providers {
    github {
      source  = "integrations/github"
      version = "4.3.2"
    }
  }
}

provider "github" {
  token = ""
  owner = ""
}
