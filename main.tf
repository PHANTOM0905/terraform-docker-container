# Specify Terraform version and required provider
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

# 1. Provider: Docker
provider "docker" {}

# 2. Create a Docker image (pulling nginx)
resource "docker_image" "nginx_image" {
  name         = "nginx:latest"
  keep_locally = false
}

# 3. Create a Docker container using the image
resource "docker_container" "nginx_container" {
  name  = "nginx-container"
  image = docker_image.nginx_image.name
  ports {
    internal = 80
    external = 8000
  }
}
