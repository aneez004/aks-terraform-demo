#output "kube_config" {
# value = azurerm_kubernetes_cluster.aks.kube_config_raw
#}
output "load_balancer_details" {
  value = kubernetes_service.nginxservice.status.0.load_balancer.0.ingress.0.hostname
 
}
#output "client_key" {
#    value = azurerm_kubernetes_cluster.aks.kube_config.0.client_key
#}

#output "client_certificate" {
#   value = azurerm_kubernetes_cluster.aks.kube_config.0.client_certificate
#}

#output "cluster_ca_certificate" {
#   value = azurerm_kubernetes_cluster.aks.kube_config.0.cluster_ca_certificate
#}

#output "cluster_username" {
#   value = azurerm_kubernetes_cluster.aks.kube_config.0.username
#}

#output "cluster_password" {
#   value = azurerm_kubernetes_cluster.aks.kube_config.0.password
#}

#output "host" {
#   value = azurerm_kubernetes_cluster.aks.kube_config.0.host
#}
