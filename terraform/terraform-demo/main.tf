terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "app_v2" {
  name = "myapp:v2"
}

resource "docker_container" "app_green" {
  name  = "app-green-terraform"
  image = docker_image.app_v2.image_id

  ports {
    internal = 80
    external = 5002
  }
}
