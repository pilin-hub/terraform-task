provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

module "namespaces" {
  source = "./resources/"
}

module "istio" {
  source = "./resources/"
}

module "application" {
  source = "./resources/"
}
