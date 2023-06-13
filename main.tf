resource "azurerm_user_assigned_identity" "aks" {
  name                = "aks-uid"
  resource_group_name = var.resource_group_name
  location            = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  resource_group_name = var.resource_group_name
  location            = var.location
  dns_prefix          = var.aks_dns_prefix

  default_node_pool {
    name            = var.aks_default_node_pool_name
    node_count      = var.aks_default_node_count
    vm_size         = var.aks_default_node_vm_size
    vnet_subnet_id  = var.aks_subnet_id
  }

  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.aks.id]
  }

  network_profile {
    network_plugin = "azure"
    network_policy = "azure"
    outbound_type  = "loadBalancer"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "nodePool" {
  name                  = var.aks_node_pool_name
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  vm_size               = var.aks_node_vm_size
  node_count            = var.aks_node_count
  vnet_subnet_id        = var.aks_subnet_id
}


resource "azurerm_role_assignment" "acr" {
  scope                = var.acr_resource_id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
}

resource "azurerm_role_assignment" "storage" {
  scope                = var.storage_account_id
  role_definition_name = "Owner"
  principal_id         = azurerm_user_assigned_identity.aks.principal_id
}

resource "azurerm_role_assignment" "sbnet" {
  scope                = var.aks_subnet_id
  role_definition_name = "Owner"
  principal_id         = azurerm_user_assigned_identity.aks.principal_id
}

resource "azurerm_role_assignment" "ra3" {
  scope                = var.application_gateway_id
  role_definition_name = "Contributor"
  principal_id         = azurerm_user_assigned_identity.aks.principal_id
}

resource "azurerm_role_assignment" "ra4" {
  scope                = var.resource_group_id
  role_definition_name = "Reader"
  principal_id         = azurerm_user_assigned_identity.aks.principal_id
}


resource "azurerm_role_assignment" "ra5" {
  scope                = var.resource_group_id
  role_definition_name = "Managed Identity Operator"
  principal_id         = azurerm_user_assigned_identity.aks.principal_id
}