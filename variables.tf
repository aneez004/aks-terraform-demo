variable "providername" {
  type    = list(string)
  default = ["Microsoft.Kubernetes", "Microsoft.KubernetesConfiguration"]
}
variable "rgName" {
  type    = string
  default = "az104-09b-rg1"
}
variable "location" {
  type    = string
  default = "eastus"
}
variable "aksname" {
  default = "az104-aks"
}
variable "dnsprefix" {
  default = "aksazure"
}

variable "subscription_id" {}
variable "tenant_id" {}
variable "service_principal_appid" {}
variable "service_principal_password" {}
