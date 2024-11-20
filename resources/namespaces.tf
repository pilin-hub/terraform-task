resource "kubernetes_namespace" "httpd_app" {
  metadata {
    name = "httpd-app"
  }
}
