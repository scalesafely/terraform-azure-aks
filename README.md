<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.aks](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |
| [azurerm_kubernetes_cluster_node_pool.nodePool](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_node_pool) | resource |
| [azurerm_role_assignment.acr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.ra3](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.ra4](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.ra5](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.sbnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.storage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_user_assigned_identity.aks](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_resource_id"></a> [acr\_resource\_id](#input\_acr\_resource\_id) | n/a | `string` | n/a | yes |
| <a name="input_aks_cluster_name"></a> [aks\_cluster\_name](#input\_aks\_cluster\_name) | n/a | `string` | n/a | yes |
| <a name="input_aks_default_node_count"></a> [aks\_default\_node\_count](#input\_aks\_default\_node\_count) | n/a | `number` | n/a | yes |
| <a name="input_aks_default_node_pool_name"></a> [aks\_default\_node\_pool\_name](#input\_aks\_default\_node\_pool\_name) | n/a | `string` | n/a | yes |
| <a name="input_aks_default_node_vm_size"></a> [aks\_default\_node\_vm\_size](#input\_aks\_default\_node\_vm\_size) | n/a | `string` | n/a | yes |
| <a name="input_aks_dns_prefix"></a> [aks\_dns\_prefix](#input\_aks\_dns\_prefix) | n/a | `string` | n/a | yes |
| <a name="input_aks_node_count"></a> [aks\_node\_count](#input\_aks\_node\_count) | n/a | `number` | n/a | yes |
| <a name="input_aks_node_pool_name"></a> [aks\_node\_pool\_name](#input\_aks\_node\_pool\_name) | n/a | `string` | n/a | yes |
| <a name="input_aks_node_vm_size"></a> [aks\_node\_vm\_size](#input\_aks\_node\_vm\_size) | n/a | `string` | n/a | yes |
| <a name="input_aks_subnet_id"></a> [aks\_subnet\_id](#input\_aks\_subnet\_id) | n/a | `string` | n/a | yes |
| <a name="input_application_gateway_id"></a> [application\_gateway\_id](#input\_application\_gateway\_id) | n/a | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_mysql_resource_id"></a> [mysql\_resource\_id](#input\_mysql\_resource\_id) | n/a | `string` | n/a | yes |
| <a name="input_resource_group_id"></a> [resource\_group\_id](#input\_resource\_group\_id) | n/a | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_storage_account_id"></a> [storage\_account\_id](#input\_storage\_account\_id) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aks_object_id"></a> [aks\_object\_id](#output\_aks\_object\_id) | n/a |
| <a name="output_aks_principal_id"></a> [aks\_principal\_id](#output\_aks\_principal\_id) | n/a |
<!-- END_TF_DOCS -->