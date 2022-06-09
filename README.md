# Azure Virtual Machine Scale Set

This repo/folder contains files for Azure VM Scale Set build.

The list of prerequisites, i.e. Azure reousrces that need to exist:

- ## Resource group
    Note: run following command if resources didn't exist
    az group create -l canadacentral --resource-group st-vmss-rg
- ## vNet/Subnet 
    Note: run following command if resources didn't exist 
    az network vnet create -g st-vmss-rg -n st-vmss-vnet --address-prefix 10.1.0.0/16 --subnet-name st-vmss-lab-reserve --subnet-prefix 10.1.0.0/24
- ## Log Analytic Workspace
    Note: run following command if resources didn't exist
    az monitor log-analytics workspace create -g st-vmss-rg -n VMSSWorkspace
    
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.8.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_random-password"></a> [random-password](#module\_random-password) | stsyg/random-password/azurerm | 1.0.0 |
| <a name="module_vmscaleset"></a> [vmscaleset](#module\_vmscaleset) | ./module/vmscaleset | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_network_peering.vnet1to2](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |
| [azurerm_virtual_network_peering.vnet2to1](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |
| [azurerm_log_analytics_workspace.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/log_analytics_workspace) | data source |
| [azurerm_resource_group.rginfra](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
| [azurerm_virtual_network.vnet1](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |
| [azurerm_virtual_network.vnet2](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_log_analytics_workspace_name"></a> [log\_analytics\_workspace\_name](#input\_log\_analytics\_workspace\_name) | Specifies the id of the Log Analytics Workspace | `any` | `null` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | The id of hub storage id for logs storage | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_load_balancer_health_probe_id"></a> [load\_balancer\_health\_probe\_id](#output\_load\_balancer\_health\_probe\_id) | The resource ID of the Load Balancer Probe. |
| <a name="output_load_balancer_nat_pool_id"></a> [load\_balancer\_nat\_pool\_id](#output\_load\_balancer\_nat\_pool\_id) | The resource ID of the Load Balancer NAT pool. |
| <a name="output_load_balancer_public_ip"></a> [load\_balancer\_public\_ip](#output\_load\_balancer\_public\_ip) | The Public IP address allocated for load balancer |
| <a name="output_load_balancer_rules_id"></a> [load\_balancer\_rules\_id](#output\_load\_balancer\_rules\_id) | The resource ID of the Load Balancer Rule |
| <a name="output_network_security_group_id"></a> [network\_security\_group\_id](#output\_network\_security\_group\_id) | The resource id of Network security group |
| <a name="output_windows_virtual_machine_scale_set_id"></a> [windows\_virtual\_machine\_scale\_set\_id](#output\_windows\_virtual\_machine\_scale\_set\_id) | The resource ID of the windows Virtual Machine Scale Set. |
| <a name="output_windows_virtual_machine_scale_set_name"></a> [windows\_virtual\_machine\_scale\_set\_name](#output\_windows\_virtual\_machine\_scale\_set\_name) | The name of the windows Virtual Machine Scale Set. |
| <a name="output_windows_virtual_machine_scale_set_unique_id"></a> [windows\_virtual\_machine\_scale\_set\_unique\_id](#output\_windows\_virtual\_machine\_scale\_set\_unique\_id) | The unique ID of the windows Virtual Machine Scale Set. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
