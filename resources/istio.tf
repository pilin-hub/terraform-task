resource "helm_release" "istio_base" {
  name       = "istio-base"
  chart      = "base"
  repository = "https://istio-release.storage.googleapis.com/charts"
  namespace  = "istio-system"
  create_namespace = true
}

resource "helm_release" "istio_discovery" {
  name       = "istiod"
  chart      = "istiod"
  repository = "https://istio-release.storage.googleapis.com/charts"
  namespace  = "istio-system"
  depends_on = [helm_release.istio_base]
  values = [
    file("${path.module}/../values/istiod-values.yaml")
  ]
}

resource "helm_release" "istio_ingress" {
  name       = "istio-ingress"
  chart      = "gateway"
  repository = "https://istio-release.storage.googleapis.com/charts"
  namespace  = "istio-system"
  depends_on = [helm_release.istio_discovery]
}
