provider "kubernetes" {
  host                   = azurerm_kubernetes_cluster.aks.kube_config.0.host
  client_certificate     = base64decode(azurerm_kubernetes_cluster.aks.kube_config.0.client_certificate)
  client_key             = base64decode(azurerm_kubernetes_cluster.aks.kube_config.0.client_key)
  cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.aks.kube_config.0.cluster_ca_certificate)
  #load_config_file = false
}
resource "kubernetes_deployment" "nginx" {

  metadata {
    labels = {
      app = "nginx"
    }

    name = "nginx-deployment"
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "nginx"
      }
    }

    template {
      metadata {
        labels = {
          app = "nginx"
        }
      }

      spec {
        container {
          image = "nginx:1.14.2"
          name  = "nginx"

          port {
            container_port = 80
          }
        }
      }
    }
  }
}
resource "kubernetes_service" "nginxservice" {
  metadata {
    name = "nginx-service"
  }
  spec {
    selector = {
      app = kubernetes_deployment.nginx.metadata.0.labels.app
    }
    port {
      port        = 80
      target_port = 80
    }

    type = "LoadBalancer"
  }
}
