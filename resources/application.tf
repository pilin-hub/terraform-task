resource "kubernetes_deployment" "httpd" {
  metadata {
    name      = "httpd"
    namespace = "httpd-app"
    labels = {
      app = "httpd"
    }
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "httpd"
      }
    }
    template {
      metadata {
        labels = {
          app = "httpd"
        }
      }
      spec {
        container {
          image = "httpd:latest"
          name  = "httpd"
          ports {
            container_port = 80
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "httpd" {
  metadata {
    name      = "httpd-service"
    namespace = "httpd-app"
    labels = {
      app = "httpd"
    }
  }
  spec {
    selector = {
      app = "httpd"
    }
    ports {
      port        = 80
      target_port = 80
    }
  }
}
