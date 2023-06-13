variable "resource_group_name" {
  type    = string
}

variable "location" {
  type    = string
}

variable "storage_account_id" {
  type = string
}

variable "mysql_resource_id" {
  type = string
}

variable "aks_cluster_name" {
  type = string
}

variable "aks_default_node_pool_name" {
  type = string
}

variable "aks_default_node_count" {
  type = number
}

variable "aks_default_node_vm_size" {
  type = string
}

variable "aks_node_pool_name" {
  type = string
}

variable "aks_node_count" {
  type = number
}

variable "aks_node_vm_size" {
  type = string
}

variable "aks_dns_prefix" {
  type = string
}

variable "aks_subnet_id" {
  type = string
}

variable "acr_resource_id" {
  type = string
}

variable "application_gateway_id" {
  type = string
}

variable "resource_group_id" {
  type = string
}