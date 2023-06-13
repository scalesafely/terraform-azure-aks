output "aks_principal_id" {
  value = azurerm_user_assigned_identity.aks.principal_id
}

output "aks_object_id" {
  value = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
}