resource "kubernetes_pod" "main" {
  metadata {
    name = "echo-example"
    labels = {
      "app" = "echo-example"
    }
  }
  spec {
    container {
      image = "hashicorp/http-echo:alpine"
      name = "example"
      args = ["-listen=:80", "-text='Hello World'"]
      port {
        container_port = 80
      }
    }
  }  
}

resource "kubernetes_service" "main" {
  metadata {
    name = "echo-services"
    labels = {
      "app" = "echo-service"
    }
  }
  spec {
    selector = {
      app = kubernetes_pod.main.metadata.0.labels.app
    }

    port {
      node_port = 30201
      port = 80
      target_port = 80
    }

    type = "NodePort"
  }
}