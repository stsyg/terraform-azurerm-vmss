<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 2.59.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 2.59.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_random-password"></a> [random-password](#module\_random-password) | stsyg/random-password/azurerm | 1.0.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_lb.vmsslb](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb) | resource |
| [azurerm_lb_backend_address_pool.bepool](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_backend_address_pool) | resource |
| [azurerm_lb_nat_pool.natpol](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_nat_pool) | resource |
| [azurerm_lb_probe.lbp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_probe) | resource |
| [azurerm_lb_rule.lbrule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_rule) | resource |
| [azurerm_linux_virtual_machine_scale_set.linux_vmss](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine_scale_set) | resource |
| [azurerm_monitor_autoscale_setting.auto](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_autoscale_setting) | resource |
| [azurerm_monitor_diagnostic_setting.lb](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_monitor_diagnostic_setting.lb-pip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_monitor_diagnostic_setting.nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_monitor_diagnostic_setting.vmmsdiag](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_network_security_group.nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_network_security_rule.nsg_rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_rule) | resource |
| [azurerm_proximity_placement_group.appgrp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/proximity_placement_group) | resource |
| [azurerm_public_ip.pip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_virtual_machine_scale_set_extension.omsagentlinux](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_scale_set_extension) | resource |
| [azurerm_virtual_machine_scale_set_extension.omsagentwin](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_scale_set_extension) | resource |
| [azurerm_virtual_machine_scale_set_extension.vmss_iis](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_scale_set_extension) | resource |
| [azurerm_windows_virtual_machine_scale_set.winsrv_vmss](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_virtual_machine_scale_set) | resource |
| [tls_private_key.rsa](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
| [azurerm_storage_account.storeacc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/storage_account) | data source |
| [azurerm_subnet.snet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_data_disks"></a> [additional\_data\_disks](#input\_additional\_data\_disks) | Adding additional disks capacity to add each instance (GB) | `list(number)` | `[]` | no |
| <a name="input_additional_data_disks_storage_account_type"></a> [additional\_data\_disks\_storage\_account\_type](#input\_additional\_data\_disks\_storage\_account\_type) | The Type of Storage Account which should back this Data Disk. Possible values include Standard\_LRS, StandardSSD\_LRS, Premium\_LRS and UltraSSD\_LRS. | `string` | `"Standard_LRS"` | no |
| <a name="input_additional_unattend_content"></a> [additional\_unattend\_content](#input\_additional\_unattend\_content) | The XML formatted content that is added to the unattend.xml file for the specified path and component. | `any` | `null` | no |
| <a name="input_additional_unattend_content_setting"></a> [additional\_unattend\_content\_setting](#input\_additional\_unattend\_content\_setting) | The name of the setting to which the content applies. Possible values are `AutoLogon` and `FirstLogonCommands` | `any` | `null` | no |
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | The Password which should be used for the local-administrator on this Virtual Machine | `any` | `null` | no |
| <a name="input_admin_ssh_key_data"></a> [admin\_ssh\_key\_data](#input\_admin\_ssh\_key\_data) | specify the path to the existing ssh key to authenciate linux vm | `any` | `null` | no |
| <a name="input_admin_username"></a> [admin\_username](#input\_admin\_username) | The username of the local administrator used for the Virtual Machine. | `string` | `"azureadmin"` | no |
| <a name="input_assign_public_ip_to_each_vm_in_vmss"></a> [assign\_public\_ip\_to\_each\_vm\_in\_vmss](#input\_assign\_public\_ip\_to\_each\_vm\_in\_vmss) | Create a virtual machine scale set that assigns a public IP address to each VM | `bool` | `false` | no |
| <a name="input_availability_zone_balance"></a> [availability\_zone\_balance](#input\_availability\_zone\_balance) | Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? | `bool` | `false` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | A list of Availability Zones in which the Virtual Machines in this Scale Set should be created in | `any` | `null` | no |
| <a name="input_computer_name_prefix"></a> [computer\_name\_prefix](#input\_computer\_name\_prefix) | Specifies the name of the virtual machine inside the VM scale set | `any` | `null` | no |
| <a name="input_custom_data"></a> [custom\_data](#input\_custom\_data) | The Base64-Encoded Custom Data which should be used for this Virtual Machine Scale Set. | `any` | `null` | no |
| <a name="input_custom_image"></a> [custom\_image](#input\_custom\_image) | Proive the custom image to this module if the default variants are not sufficient | <pre>object({<br>    publisher = string<br>    offer     = string<br>    sku       = string<br>    version   = string<br>  })</pre> | `null` | no |
| <a name="input_deploy_log_analytics_agent"></a> [deploy\_log\_analytics\_agent](#input\_deploy\_log\_analytics\_agent) | Install log analytics agent to windows or linux VM scaleset instances | `bool` | `false` | no |
| <a name="input_disable_password_authentication"></a> [disable\_password\_authentication](#input\_disable\_password\_authentication) | Should Password Authentication be disabled on this Virtual Machine Scale Set? Defaults to true. | `bool` | `true` | no |
| <a name="input_disk_encryption_set_id"></a> [disk\_encryption\_set\_id](#input\_disk\_encryption\_set\_id) | The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk. The Disk Encryption Set must have the `Reader` Role Assignment scoped on the Key Vault - in addition to an Access Policy to the Key Vault | `any` | `null` | no |
| <a name="input_disk_size_gb"></a> [disk\_size\_gb](#input\_disk\_size\_gb) | The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Scale Set is sourced from. | `any` | `null` | no |
| <a name="input_dns_servers"></a> [dns\_servers](#input\_dns\_servers) | List of dns servers to use for network interface | `list` | `[]` | no |
| <a name="input_do_not_run_extensions_on_overprovisioned_machines"></a> [do\_not\_run\_extensions\_on\_overprovisioned\_machines](#input\_do\_not\_run\_extensions\_on\_overprovisioned\_machines) | Should Virtual Machine Extensions be run on Overprovisioned Virtual Machines in the Scale Set? | `bool` | `false` | no |
| <a name="input_domain_name_label"></a> [domain\_name\_label](#input\_domain\_name\_label) | Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system. | `any` | `null` | no |
| <a name="input_enable_accelerated_networking"></a> [enable\_accelerated\_networking](#input\_enable\_accelerated\_networking) | Should Accelerated Networking be enabled? Defaults to false. | `bool` | `false` | no |
| <a name="input_enable_automatic_instance_repair"></a> [enable\_automatic\_instance\_repair](#input\_enable\_automatic\_instance\_repair) | Should the automatic instance repair be enabled on this Virtual Machine Scale Set? | `bool` | `false` | no |
| <a name="input_enable_autoscale_for_vmss"></a> [enable\_autoscale\_for\_vmss](#input\_enable\_autoscale\_for\_vmss) | Manages a AutoScale Setting which can be applied to Virtual Machine Scale Sets | `bool` | `false` | no |
| <a name="input_enable_boot_diagnostics"></a> [enable\_boot\_diagnostics](#input\_enable\_boot\_diagnostics) | Should the boot diagnostics enabled? | `bool` | `false` | no |
| <a name="input_enable_encryption_at_host"></a> [enable\_encryption\_at\_host](#input\_enable\_encryption\_at\_host) | Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host? | `bool` | `false` | no |
| <a name="input_enable_ip_forwarding"></a> [enable\_ip\_forwarding](#input\_enable\_ip\_forwarding) | Should IP Forwarding be enabled? Defaults to false | `bool` | `false` | no |
| <a name="input_enable_lb_nat_pool"></a> [enable\_lb\_nat\_pool](#input\_enable\_lb\_nat\_pool) | If enabled load balancer nat pool will be created for SSH if flavor is linux and for winrm if flavour is windows | `bool` | `false` | no |
| <a name="input_enable_load_balancer"></a> [enable\_load\_balancer](#input\_enable\_load\_balancer) | Controls if public load balancer should be created | `bool` | `true` | no |
| <a name="input_enable_os_disk_write_accelerator"></a> [enable\_os\_disk\_write\_accelerator](#input\_enable\_os\_disk\_write\_accelerator) | Should Write Accelerator be Enabled for this OS Disk? This requires that the `storage_account_type` is set to `Premium_LRS` and that `caching` is set to `None`. | `bool` | `false` | no |
| <a name="input_enable_proximity_placement_group"></a> [enable\_proximity\_placement\_group](#input\_enable\_proximity\_placement\_group) | Manages a proximity placement group for virtual machines, virtual machine scale sets and availability sets. | `bool` | `false` | no |
| <a name="input_enable_ultra_ssd_data_disk_storage_support"></a> [enable\_ultra\_ssd\_data\_disk\_storage\_support](#input\_enable\_ultra\_ssd\_data\_disk\_storage\_support) | Should the capacity to enable Data Disks of the UltraSSD\_LRS storage account type be supported on this Virtual Machine | `bool` | `false` | no |
| <a name="input_enable_windows_vm_automatic_updates"></a> [enable\_windows\_vm\_automatic\_updates](#input\_enable\_windows\_vm\_automatic\_updates) | Are automatic updates enabled for Windows Virtual Machine in this scale set? | `bool` | `true` | no |
| <a name="input_existing_network_security_group_id"></a> [existing\_network\_security\_group\_id](#input\_existing\_network\_security\_group\_id) | The resource id of existing network security group | `any` | `null` | no |
| <a name="input_generate_admin_ssh_key"></a> [generate\_admin\_ssh\_key](#input\_generate\_admin\_ssh\_key) | Generates a secure private key and encodes it as PEM. | `bool` | `false` | no |
| <a name="input_grace_period"></a> [grace\_period](#input\_grace\_period) | Amount of time (in minutes, between 30 and 90, defaults to 30 minutes) for which automatic repairs will be delayed. | `string` | `"PT30M"` | no |
| <a name="input_instances_count"></a> [instances\_count](#input\_instances\_count) | The number of Virtual Machines in the Scale Set. | `number` | `2` | no |
| <a name="input_intall_iis_server_on_instances"></a> [intall\_iis\_server\_on\_instances](#input\_intall\_iis\_server\_on\_instances) | Install ISS server on every Instance in the VM scale set | `bool` | `false` | no |
| <a name="input_key_vault_certificate_secret_url"></a> [key\_vault\_certificate\_secret\_url](#input\_key\_vault\_certificate\_secret\_url) | The Secret URL of a Key Vault Certificate, which must be specified when `protocol` is set to `Https` | `any` | `null` | no |
| <a name="input_lb_diag_logs"></a> [lb\_diag\_logs](#input\_lb\_diag\_logs) | Load balancer Category details for Azure Diagnostic setting | `list` | <pre>[<br>  "LoadBalancerAlertEvent"<br>]</pre> | no |
| <a name="input_lb_private_ip_address"></a> [lb\_private\_ip\_address](#input\_lb\_private\_ip\_address) | Private IP Address to assign to the Load Balancer. | `any` | `null` | no |
| <a name="input_lb_probe_protocol"></a> [lb\_probe\_protocol](#input\_lb\_probe\_protocol) | Specifies the protocol of the end point. Possible values are `Http`, `Https` or `Tcp`. If `Tcp` is specified, a received ACK is required for the probe to be successful. If `Http` is specified, a `200 OK` response from the specified `URI` is required for the probe to be successful. | `any` | `null` | no |
| <a name="input_lb_probe_request_path"></a> [lb\_probe\_request\_path](#input\_lb\_probe\_request\_path) | The URI used for requesting health status from the backend endpoint. Required if protocol is set to `Http` or `Https`. Otherwise, it is not allowed | `any` | `null` | no |
| <a name="input_license_type"></a> [license\_type](#input\_license\_type) | Specifies the type of on-premise license which should be used for this Virtual Machine. Possible values are None, Windows\_Client and Windows\_Server. | `string` | `"None"` | no |
| <a name="input_linux_distribution_list"></a> [linux\_distribution\_list](#input\_linux\_distribution\_list) | n/a | <pre>map(object({<br>    publisher = string<br>    offer     = string<br>    sku       = string<br>    version   = string<br>  }))</pre> | <pre>{<br>  "centos8": {<br>    "offer": "CentOS",<br>    "publisher": "OpenLogic",<br>    "sku": "7.5",<br>    "version": "latest"<br>  },<br>  "coreos": {<br>    "offer": "CoreOS",<br>    "publisher": "CoreOS",<br>    "sku": "Stable",<br>    "version": "latest"<br>  },<br>  "ubuntu1604": {<br>    "offer": "UbuntuServer",<br>    "publisher": "Canonical",<br>    "sku": "16.04-LTS",<br>    "version": "latest"<br>  },<br>  "ubuntu1804": {<br>    "offer": "UbuntuServer",<br>    "publisher": "Canonical",<br>    "sku": "18.04-LTS",<br>    "version": "latest"<br>  }<br>}</pre> | no |
| <a name="input_linux_distribution_name"></a> [linux\_distribution\_name](#input\_linux\_distribution\_name) | Variable to pick an OS flavour for Linux based VMSS possible values include: centos8, ubuntu1804 | `string` | `"ubuntu1804"` | no |
| <a name="input_load_balanced_port_list"></a> [load\_balanced\_port\_list](#input\_load\_balanced\_port\_list) | List of ports to be forwarded through the load balancer to the VMs | `list(number)` | `[]` | no |
| <a name="input_load_balancer_health_probe_port"></a> [load\_balancer\_health\_probe\_port](#input\_load\_balancer\_health\_probe\_port) | Port on which the Probe queries the backend endpoint. Default `80` | `number` | `80` | no |
| <a name="input_load_balancer_sku"></a> [load\_balancer\_sku](#input\_load\_balancer\_sku) | The SKU of the Azure Load Balancer. Accepted values are Basic and Standard. | `string` | `"Standard"` | no |
| <a name="input_load_balancer_type"></a> [load\_balancer\_type](#input\_load\_balancer\_type) | Controls the type of load balancer should be created. Possible values are public and private | `string` | `"private"` | no |
| <a name="input_log_analytics_customer_id"></a> [log\_analytics\_customer\_id](#input\_log\_analytics\_customer\_id) | The Workspace (or Customer) ID for the Log Analytics Workspace. | `any` | `null` | no |
| <a name="input_log_analytics_workspace_id"></a> [log\_analytics\_workspace\_id](#input\_log\_analytics\_workspace\_id) | The name of log analytics workspace resource id | `any` | `null` | no |
| <a name="input_log_analytics_workspace_primary_shared_key"></a> [log\_analytics\_workspace\_primary\_shared\_key](#input\_log\_analytics\_workspace\_primary\_shared\_key) | The Primary shared key for the Log Analytics Workspace | `any` | `null` | no |
| <a name="input_managed_identity_ids"></a> [managed\_identity\_ids](#input\_managed\_identity\_ids) | A list of User Managed Identity ID's which should be assigned to the Linux Virtual Machine Scale Set. | `any` | `null` | no |
| <a name="input_managed_identity_type"></a> [managed\_identity\_type](#input\_managed\_identity\_type) | The type of Managed Identity which should be assigned to the Linux Virtual Machine Scale Set. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned` | `any` | `null` | no |
| <a name="input_maximum_instances_count"></a> [maximum\_instances\_count](#input\_maximum\_instances\_count) | The maximum number of instances for this resource. Valid values are between 0 and 1000 | `string` | `""` | no |
| <a name="input_minimum_instances_count"></a> [minimum\_instances\_count](#input\_minimum\_instances\_count) | The minimum number of instances for this resource. Valid values are between 0 and 1000 | `any` | `null` | no |
| <a name="input_nat_pool_frontend_ports"></a> [nat\_pool\_frontend\_ports](#input\_nat\_pool\_frontend\_ports) | Optional override for default NAT ports | `list(number)` | <pre>[<br>  50000,<br>  50119<br>]</pre> | no |
| <a name="input_nsg_diag_logs"></a> [nsg\_diag\_logs](#input\_nsg\_diag\_logs) | NSG Monitoring Category details for Azure Diagnostic setting | `list` | <pre>[<br>  "NetworkSecurityGroupEvent",<br>  "NetworkSecurityGroupRuleCounter"<br>]</pre> | no |
| <a name="input_nsg_inbound_rules"></a> [nsg\_inbound\_rules](#input\_nsg\_inbound\_rules) | List of network rules to apply to network interface. | `list` | `[]` | no |
| <a name="input_number_of_probes"></a> [number\_of\_probes](#input\_number\_of\_probes) | The number of failed probe attempts after which the backend endpoint is removed from rotation. The default value is `2`. `NumberOfProbes` multiplied by `intervalInSeconds` value must be greater or equal to 10.Endpoints are returned to rotation when at least one probe is successful. | `any` | `null` | no |
| <a name="input_os_disk_caching"></a> [os\_disk\_caching](#input\_os\_disk\_caching) | The Type of Caching which should be used for the Internal OS Disk. Possible values are `None`, `ReadOnly` and `ReadWrite` | `string` | `"ReadWrite"` | no |
| <a name="input_os_disk_storage_account_type"></a> [os\_disk\_storage\_account\_type](#input\_os\_disk\_storage\_account\_type) | The Type of Storage Account which should back this the Internal OS Disk. Possible values include `Standard_LRS`, `StandardSSD_LRS` and `Premium_LRS`. | `string` | `"StandardSSD_LRS"` | no |
| <a name="input_os_flavor"></a> [os\_flavor](#input\_os\_flavor) | Specify the flavour of the operating system image to deploy VMSS. Valid values are `windows` and `linux` | `string` | `"windows"` | no |
| <a name="input_os_upgrade_mode"></a> [os\_upgrade\_mode](#input\_os\_upgrade\_mode) | Specifies how Upgrades (e.g. changing the Image/SKU) should be performed to Virtual Machine Instances. Possible values are Automatic, Manual and Rolling. Defaults to Automatic | `string` | `"Automatic"` | no |
| <a name="input_overprovision"></a> [overprovision](#input\_overprovision) | Should Azure over-provision Virtual Machines in this Scale Set? This means that multiple Virtual Machines will be provisioned and Azure will keep the instances which become available first - which improves provisioning success rates and improves deployment time. You're not billed for these over-provisioned VM's and they don't count towards the Subscription Quota. Defaults to true. | `bool` | `false` | no |
| <a name="input_pip_diag_logs"></a> [pip\_diag\_logs](#input\_pip\_diag\_logs) | Load balancer Public IP Monitoring Category details for Azure Diagnostic setting | `list` | <pre>[<br>  "DDoSProtectionNotifications",<br>  "DDoSMitigationFlowLogs",<br>  "DDoSMitigationReports"<br>]</pre> | no |
| <a name="input_platform_fault_domain_count"></a> [platform\_fault\_domain\_count](#input\_platform\_fault\_domain\_count) | Specifies the number of fault domains that are used by this Linux Virtual Machine Scale Set. | `any` | `null` | no |
| <a name="input_private_ip_address_allocation_type"></a> [private\_ip\_address\_allocation\_type](#input\_private\_ip\_address\_allocation\_type) | The allocation method for the Private IP Address used by this Load Balancer. Possible values as Dynamic and Static. | `string` | `"Dynamic"` | no |
| <a name="input_public_ip_allocation_method"></a> [public\_ip\_allocation\_method](#input\_public\_ip\_allocation\_method) | Defines the allocation method for this IP address. Possible values are `Static` or `Dynamic` | `string` | `"Static"` | no |
| <a name="input_public_ip_prefix_id"></a> [public\_ip\_prefix\_id](#input\_public\_ip\_prefix\_id) | The ID of the Public IP Address Prefix from where Public IP Addresses should be allocated | `any` | `null` | no |
| <a name="input_public_ip_sku"></a> [public\_ip\_sku](#input\_public\_ip\_sku) | The SKU of the Public IP. Accepted values are `Basic` and `Standard` | `string` | `"Standard"` | no |
| <a name="input_public_ip_sku_tier"></a> [public\_ip\_sku\_tier](#input\_public\_ip\_sku\_tier) | The SKU Tier that should be used for the Public IP. Possible values are `Regional` and `Global` | `string` | `"Regional"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | A container that holds related resources for an Azure solution | `string` | `""` | no |
| <a name="input_rolling_upgrade_policy"></a> [rolling\_upgrade\_policy](#input\_rolling\_upgrade\_policy) | Enabling automatic OS image upgrades on your scale set helps ease update management by safely and automatically upgrading the OS disk for all instances in the scale set. | <pre>object({<br>    max_batch_instance_percent              = number<br>    max_unhealthy_instance_percent          = number<br>    max_unhealthy_upgraded_instance_percent = number<br>    pause_time_between_batches              = string<br>  })</pre> | <pre>{<br>  "max_batch_instance_percent": 20,<br>  "max_unhealthy_instance_percent": 20,<br>  "max_unhealthy_upgraded_instance_percent": 20,<br>  "pause_time_between_batches": "PT0S"<br>}</pre> | no |
| <a name="input_scale_in_cpu_percentage_threshold"></a> [scale\_in\_cpu\_percentage\_threshold](#input\_scale\_in\_cpu\_percentage\_threshold) | Specifies the threshold of the metric that triggers the scale in action. | `string` | `"20"` | no |
| <a name="input_scale_in_policy"></a> [scale\_in\_policy](#input\_scale\_in\_policy) | The scale-in policy rule that decides which virtual machines are chosen for removal when a Virtual Machine Scale Set is scaled in. Possible values for the scale-in policy rules are `Default`, `NewestVM` and `OldestVM` | `string` | `"Default"` | no |
| <a name="input_scale_out_cpu_percentage_threshold"></a> [scale\_out\_cpu\_percentage\_threshold](#input\_scale\_out\_cpu\_percentage\_threshold) | Specifies the threshold % of the metric that triggers the scale out action. | `string` | `"80"` | no |
| <a name="input_scaling_action_instances_number"></a> [scaling\_action\_instances\_number](#input\_scaling\_action\_instances\_number) | The number of instances involved in the scaling action | `string` | `"1"` | no |
| <a name="input_single_placement_group"></a> [single\_placement\_group](#input\_single\_placement\_group) | Allow to have cluster of 100 VMs only | `bool` | `true` | no |
| <a name="input_source_image_id"></a> [source\_image\_id](#input\_source\_image\_id) | The ID of an Image which each Virtual Machine in this Scale Set should be based on | `any` | `null` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | The name of the hub storage account to store logs | `any` | `null` | no |
| <a name="input_storage_account_uri"></a> [storage\_account\_uri](#input\_storage\_account\_uri) | The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor. Passing a `null` value will utilize a Managed Storage Account to store Boot Diagnostics. | `any` | `null` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | The name of the subnet to use in VM scale set | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | `{}` | no |
| <a name="input_virtual_machine_size"></a> [virtual\_machine\_size](#input\_virtual\_machine\_size) | The Virtual Machine SKU for the Scale Set, Default is Standard\_A2\_V2 | `string` | `"Standard_A2_v2"` | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | The name of the virtual network | `string` | `""` | no |
| <a name="input_vm_time_zone"></a> [vm\_time\_zone](#input\_vm\_time\_zone) | Specifies the Time Zone which should be used by the Virtual Machine | `any` | `null` | no |
| <a name="input_vmscaleset_name"></a> [vmscaleset\_name](#input\_vmscaleset\_name) | The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the name field. If the value of the name field is not a valid computer\_name\_prefix, then you must specify computer\_name\_prefix | `string` | `""` | no |
| <a name="input_windows_distribution_list"></a> [windows\_distribution\_list](#input\_windows\_distribution\_list) | n/a | <pre>map(object({<br>    publisher = string<br>    offer     = string<br>    sku       = string<br>    version   = string<br>  }))</pre> | <pre>{<br>  "mssql2017exp": {<br>    "offer": "SQL2017-WS2016",<br>    "publisher": "MicrosoftSQLServer",<br>    "sku": "Express",<br>    "version": "latest"<br>  },<br>  "windows2012r2dc": {<br>    "offer": "WindowsServer",<br>    "publisher": "MicrosoftWindowsServer",<br>    "sku": "2012-R2-Datacenter",<br>    "version": "latest"<br>  },<br>  "windows2016dc": {<br>    "offer": "WindowsServer",<br>    "publisher": "MicrosoftWindowsServer",<br>    "sku": "2016-Datacenter",<br>    "version": "latest"<br>  },<br>  "windows2019dc": {<br>    "offer": "WindowsServer",<br>    "publisher": "MicrosoftWindowsServer",<br>    "sku": "2019-Datacenter",<br>    "version": "latest"<br>  }<br>}</pre> | no |
| <a name="input_windows_distribution_name"></a> [windows\_distribution\_name](#input\_windows\_distribution\_name) | Variable to pick an OS flavour for Windows based VMSS possible values include: winserver, wincore, winsql | `string` | `"windows2019dc"` | no |
| <a name="input_winrm_protocol"></a> [winrm\_protocol](#input\_winrm\_protocol) | Specifies the protocol of winrm listener. Possible values are `Http` or `Https` | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_admin_ssh_key_private"></a> [admin\_ssh\_key\_private](#output\_admin\_ssh\_key\_private) | The generated private key data in PEM format |
| <a name="output_admin_ssh_key_public"></a> [admin\_ssh\_key\_public](#output\_admin\_ssh\_key\_public) | The generated public key data in PEM format |
| <a name="output_linux_virtual_machine_scale_set_id"></a> [linux\_virtual\_machine\_scale\_set\_id](#output\_linux\_virtual\_machine\_scale\_set\_id) | The resource ID of the Linux Virtual Machine Scale Set. |
| <a name="output_linux_virtual_machine_scale_set_name"></a> [linux\_virtual\_machine\_scale\_set\_name](#output\_linux\_virtual\_machine\_scale\_set\_name) | The name of the Linux Virtual Machine Scale Set. |
| <a name="output_linux_virtual_machine_scale_set_unique_id"></a> [linux\_virtual\_machine\_scale\_set\_unique\_id](#output\_linux\_virtual\_machine\_scale\_set\_unique\_id) | The unique ID of the Linux Virtual Machine Scale Set. |
| <a name="output_load_balancer_health_probe_id"></a> [load\_balancer\_health\_probe\_id](#output\_load\_balancer\_health\_probe\_id) | The resource ID of the Load Balancer health Probe. |
| <a name="output_load_balancer_nat_pool_id"></a> [load\_balancer\_nat\_pool\_id](#output\_load\_balancer\_nat\_pool\_id) | The resource ID of the Load Balancer NAT pool. |
| <a name="output_load_balancer_private_ip"></a> [load\_balancer\_private\_ip](#output\_load\_balancer\_private\_ip) | The Private IP address allocated for load balancer |
| <a name="output_load_balancer_public_ip"></a> [load\_balancer\_public\_ip](#output\_load\_balancer\_public\_ip) | The Public IP address allocated for load balancer |
| <a name="output_load_balancer_rules_id"></a> [load\_balancer\_rules\_id](#output\_load\_balancer\_rules\_id) | The resource ID of the Load Balancer Rule |
| <a name="output_network_security_group_id"></a> [network\_security\_group\_id](#output\_network\_security\_group\_id) | The resource id of Network security group |
| <a name="output_windows_virtual_machine_scale_set_id"></a> [windows\_virtual\_machine\_scale\_set\_id](#output\_windows\_virtual\_machine\_scale\_set\_id) | The resource ID of the windows Virtual Machine Scale Set. |
| <a name="output_windows_virtual_machine_scale_set_name"></a> [windows\_virtual\_machine\_scale\_set\_name](#output\_windows\_virtual\_machine\_scale\_set\_name) | The name of the windows Virtual Machine Scale Set. |
| <a name="output_windows_virtual_machine_scale_set_unique_id"></a> [windows\_virtual\_machine\_scale\_set\_unique\_id](#output\_windows\_virtual\_machine\_scale\_set\_unique\_id) | The unique ID of the windows Virtual Machine Scale Set. |
<!-- END_TF_DOCS --><!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 2.59.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 2.59.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_random-password"></a> [random-password](#module\_random-password) | stsyg/random-password/azurerm | 1.0.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_lb.vmsslb](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb) | resource |
| [azurerm_lb_backend_address_pool.bepool](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_backend_address_pool) | resource |
| [azurerm_lb_nat_pool.natpol](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_nat_pool) | resource |
| [azurerm_lb_probe.lbp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_probe) | resource |
| [azurerm_lb_rule.lbrule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_rule) | resource |
| [azurerm_linux_virtual_machine_scale_set.linux_vmss](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine_scale_set) | resource |
| [azurerm_monitor_autoscale_setting.auto](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_autoscale_setting) | resource |
| [azurerm_monitor_diagnostic_setting.lb](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_monitor_diagnostic_setting.lb-pip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_monitor_diagnostic_setting.nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_monitor_diagnostic_setting.vmmsdiag](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_network_security_group.nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_network_security_rule.nsg_rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_rule) | resource |
| [azurerm_proximity_placement_group.appgrp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/proximity_placement_group) | resource |
| [azurerm_public_ip.pip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_virtual_machine_scale_set_extension.omsagentlinux](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_scale_set_extension) | resource |
| [azurerm_virtual_machine_scale_set_extension.omsagentwin](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_scale_set_extension) | resource |
| [azurerm_virtual_machine_scale_set_extension.vmss_iis](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_scale_set_extension) | resource |
| [azurerm_windows_virtual_machine_scale_set.winsrv_vmss](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_virtual_machine_scale_set) | resource |
| [tls_private_key.rsa](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
| [azurerm_storage_account.storeacc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/storage_account) | data source |
| [azurerm_subnet.snet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_data_disks"></a> [additional\_data\_disks](#input\_additional\_data\_disks) | Adding additional disks capacity to add each instance (GB) | `list(number)` | `[]` | no |
| <a name="input_additional_data_disks_storage_account_type"></a> [additional\_data\_disks\_storage\_account\_type](#input\_additional\_data\_disks\_storage\_account\_type) | The Type of Storage Account which should back this Data Disk. Possible values include Standard\_LRS, StandardSSD\_LRS, Premium\_LRS and UltraSSD\_LRS. | `string` | `"Standard_LRS"` | no |
| <a name="input_additional_unattend_content"></a> [additional\_unattend\_content](#input\_additional\_unattend\_content) | The XML formatted content that is added to the unattend.xml file for the specified path and component. | `any` | `null` | no |
| <a name="input_additional_unattend_content_setting"></a> [additional\_unattend\_content\_setting](#input\_additional\_unattend\_content\_setting) | The name of the setting to which the content applies. Possible values are `AutoLogon` and `FirstLogonCommands` | `any` | `null` | no |
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | The Password which should be used for the local-administrator on this Virtual Machine | `any` | `null` | no |
| <a name="input_admin_ssh_key_data"></a> [admin\_ssh\_key\_data](#input\_admin\_ssh\_key\_data) | specify the path to the existing ssh key to authenciate linux vm | `any` | `null` | no |
| <a name="input_admin_username"></a> [admin\_username](#input\_admin\_username) | The username of the local administrator used for the Virtual Machine. | `string` | `"azureadmin"` | no |
| <a name="input_assign_public_ip_to_each_vm_in_vmss"></a> [assign\_public\_ip\_to\_each\_vm\_in\_vmss](#input\_assign\_public\_ip\_to\_each\_vm\_in\_vmss) | Create a virtual machine scale set that assigns a public IP address to each VM | `bool` | `false` | no |
| <a name="input_availability_zone_balance"></a> [availability\_zone\_balance](#input\_availability\_zone\_balance) | Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? | `bool` | `false` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | A list of Availability Zones in which the Virtual Machines in this Scale Set should be created in | `any` | `null` | no |
| <a name="input_computer_name_prefix"></a> [computer\_name\_prefix](#input\_computer\_name\_prefix) | Specifies the name of the virtual machine inside the VM scale set | `any` | `null` | no |
| <a name="input_custom_data"></a> [custom\_data](#input\_custom\_data) | The Base64-Encoded Custom Data which should be used for this Virtual Machine Scale Set. | `any` | `null` | no |
| <a name="input_custom_image"></a> [custom\_image](#input\_custom\_image) | Proive the custom image to this module if the default variants are not sufficient | <pre>object({<br>    publisher = string<br>    offer     = string<br>    sku       = string<br>    version   = string<br>  })</pre> | `null` | no |
| <a name="input_deploy_log_analytics_agent"></a> [deploy\_log\_analytics\_agent](#input\_deploy\_log\_analytics\_agent) | Install log analytics agent to windows or linux VM scaleset instances | `bool` | `false` | no |
| <a name="input_disable_password_authentication"></a> [disable\_password\_authentication](#input\_disable\_password\_authentication) | Should Password Authentication be disabled on this Virtual Machine Scale Set? Defaults to true. | `bool` | `true` | no |
| <a name="input_disk_encryption_set_id"></a> [disk\_encryption\_set\_id](#input\_disk\_encryption\_set\_id) | The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk. The Disk Encryption Set must have the `Reader` Role Assignment scoped on the Key Vault - in addition to an Access Policy to the Key Vault | `any` | `null` | no |
| <a name="input_disk_size_gb"></a> [disk\_size\_gb](#input\_disk\_size\_gb) | The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Scale Set is sourced from. | `any` | `null` | no |
| <a name="input_dns_servers"></a> [dns\_servers](#input\_dns\_servers) | List of dns servers to use for network interface | `list` | `[]` | no |
| <a name="input_do_not_run_extensions_on_overprovisioned_machines"></a> [do\_not\_run\_extensions\_on\_overprovisioned\_machines](#input\_do\_not\_run\_extensions\_on\_overprovisioned\_machines) | Should Virtual Machine Extensions be run on Overprovisioned Virtual Machines in the Scale Set? | `bool` | `false` | no |
| <a name="input_domain_name_label"></a> [domain\_name\_label](#input\_domain\_name\_label) | Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system. | `any` | `null` | no |
| <a name="input_enable_accelerated_networking"></a> [enable\_accelerated\_networking](#input\_enable\_accelerated\_networking) | Should Accelerated Networking be enabled? Defaults to false. | `bool` | `false` | no |
| <a name="input_enable_automatic_instance_repair"></a> [enable\_automatic\_instance\_repair](#input\_enable\_automatic\_instance\_repair) | Should the automatic instance repair be enabled on this Virtual Machine Scale Set? | `bool` | `false` | no |
| <a name="input_enable_autoscale_for_vmss"></a> [enable\_autoscale\_for\_vmss](#input\_enable\_autoscale\_for\_vmss) | Manages a AutoScale Setting which can be applied to Virtual Machine Scale Sets | `bool` | `false` | no |
| <a name="input_enable_boot_diagnostics"></a> [enable\_boot\_diagnostics](#input\_enable\_boot\_diagnostics) | Should the boot diagnostics enabled? | `bool` | `false` | no |
| <a name="input_enable_encryption_at_host"></a> [enable\_encryption\_at\_host](#input\_enable\_encryption\_at\_host) | Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host? | `bool` | `false` | no |
| <a name="input_enable_ip_forwarding"></a> [enable\_ip\_forwarding](#input\_enable\_ip\_forwarding) | Should IP Forwarding be enabled? Defaults to false | `bool` | `false` | no |
| <a name="input_enable_lb_nat_pool"></a> [enable\_lb\_nat\_pool](#input\_enable\_lb\_nat\_pool) | If enabled load balancer nat pool will be created for SSH if flavor is linux and for winrm if flavour is windows | `bool` | `false` | no |
| <a name="input_enable_load_balancer"></a> [enable\_load\_balancer](#input\_enable\_load\_balancer) | Controls if public load balancer should be created | `bool` | `true` | no |
| <a name="input_enable_os_disk_write_accelerator"></a> [enable\_os\_disk\_write\_accelerator](#input\_enable\_os\_disk\_write\_accelerator) | Should Write Accelerator be Enabled for this OS Disk? This requires that the `storage_account_type` is set to `Premium_LRS` and that `caching` is set to `None`. | `bool` | `false` | no |
| <a name="input_enable_proximity_placement_group"></a> [enable\_proximity\_placement\_group](#input\_enable\_proximity\_placement\_group) | Manages a proximity placement group for virtual machines, virtual machine scale sets and availability sets. | `bool` | `false` | no |
| <a name="input_enable_ultra_ssd_data_disk_storage_support"></a> [enable\_ultra\_ssd\_data\_disk\_storage\_support](#input\_enable\_ultra\_ssd\_data\_disk\_storage\_support) | Should the capacity to enable Data Disks of the UltraSSD\_LRS storage account type be supported on this Virtual Machine | `bool` | `false` | no |
| <a name="input_enable_windows_vm_automatic_updates"></a> [enable\_windows\_vm\_automatic\_updates](#input\_enable\_windows\_vm\_automatic\_updates) | Are automatic updates enabled for Windows Virtual Machine in this scale set? | `bool` | `true` | no |
| <a name="input_existing_network_security_group_id"></a> [existing\_network\_security\_group\_id](#input\_existing\_network\_security\_group\_id) | The resource id of existing network security group | `any` | `null` | no |
| <a name="input_generate_admin_ssh_key"></a> [generate\_admin\_ssh\_key](#input\_generate\_admin\_ssh\_key) | Generates a secure private key and encodes it as PEM. | `bool` | `false` | no |
| <a name="input_grace_period"></a> [grace\_period](#input\_grace\_period) | Amount of time (in minutes, between 30 and 90, defaults to 30 minutes) for which automatic repairs will be delayed. | `string` | `"PT30M"` | no |
| <a name="input_instances_count"></a> [instances\_count](#input\_instances\_count) | The number of Virtual Machines in the Scale Set. | `number` | `2` | no |
| <a name="input_intall_iis_server_on_instances"></a> [intall\_iis\_server\_on\_instances](#input\_intall\_iis\_server\_on\_instances) | Install ISS server on every Instance in the VM scale set | `bool` | `false` | no |
| <a name="input_key_vault_certificate_secret_url"></a> [key\_vault\_certificate\_secret\_url](#input\_key\_vault\_certificate\_secret\_url) | The Secret URL of a Key Vault Certificate, which must be specified when `protocol` is set to `Https` | `any` | `null` | no |
| <a name="input_lb_diag_logs"></a> [lb\_diag\_logs](#input\_lb\_diag\_logs) | Load balancer Category details for Azure Diagnostic setting | `list` | <pre>[<br>  "LoadBalancerAlertEvent"<br>]</pre> | no |
| <a name="input_lb_private_ip_address"></a> [lb\_private\_ip\_address](#input\_lb\_private\_ip\_address) | Private IP Address to assign to the Load Balancer. | `any` | `null` | no |
| <a name="input_lb_probe_protocol"></a> [lb\_probe\_protocol](#input\_lb\_probe\_protocol) | Specifies the protocol of the end point. Possible values are `Http`, `Https` or `Tcp`. If `Tcp` is specified, a received ACK is required for the probe to be successful. If `Http` is specified, a `200 OK` response from the specified `URI` is required for the probe to be successful. | `any` | `null` | no |
| <a name="input_lb_probe_request_path"></a> [lb\_probe\_request\_path](#input\_lb\_probe\_request\_path) | The URI used for requesting health status from the backend endpoint. Required if protocol is set to `Http` or `Https`. Otherwise, it is not allowed | `any` | `null` | no |
| <a name="input_license_type"></a> [license\_type](#input\_license\_type) | Specifies the type of on-premise license which should be used for this Virtual Machine. Possible values are None, Windows\_Client and Windows\_Server. | `string` | `"None"` | no |
| <a name="input_linux_distribution_list"></a> [linux\_distribution\_list](#input\_linux\_distribution\_list) | n/a | <pre>map(object({<br>    publisher = string<br>    offer     = string<br>    sku       = string<br>    version   = string<br>  }))</pre> | <pre>{<br>  "centos8": {<br>    "offer": "CentOS",<br>    "publisher": "OpenLogic",<br>    "sku": "7.5",<br>    "version": "latest"<br>  },<br>  "coreos": {<br>    "offer": "CoreOS",<br>    "publisher": "CoreOS",<br>    "sku": "Stable",<br>    "version": "latest"<br>  },<br>  "ubuntu1604": {<br>    "offer": "UbuntuServer",<br>    "publisher": "Canonical",<br>    "sku": "16.04-LTS",<br>    "version": "latest"<br>  },<br>  "ubuntu1804": {<br>    "offer": "UbuntuServer",<br>    "publisher": "Canonical",<br>    "sku": "18.04-LTS",<br>    "version": "latest"<br>  }<br>}</pre> | no |
| <a name="input_linux_distribution_name"></a> [linux\_distribution\_name](#input\_linux\_distribution\_name) | Variable to pick an OS flavour for Linux based VMSS possible values include: centos8, ubuntu1804 | `string` | `"ubuntu1804"` | no |
| <a name="input_load_balanced_port_list"></a> [load\_balanced\_port\_list](#input\_load\_balanced\_port\_list) | List of ports to be forwarded through the load balancer to the VMs | `list(number)` | `[]` | no |
| <a name="input_load_balancer_health_probe_port"></a> [load\_balancer\_health\_probe\_port](#input\_load\_balancer\_health\_probe\_port) | Port on which the Probe queries the backend endpoint. Default `80` | `number` | `80` | no |
| <a name="input_load_balancer_sku"></a> [load\_balancer\_sku](#input\_load\_balancer\_sku) | The SKU of the Azure Load Balancer. Accepted values are Basic and Standard. | `string` | `"Standard"` | no |
| <a name="input_load_balancer_type"></a> [load\_balancer\_type](#input\_load\_balancer\_type) | Controls the type of load balancer should be created. Possible values are public and private | `string` | `"private"` | no |
| <a name="input_log_analytics_customer_id"></a> [log\_analytics\_customer\_id](#input\_log\_analytics\_customer\_id) | The Workspace (or Customer) ID for the Log Analytics Workspace. | `any` | `null` | no |
| <a name="input_log_analytics_workspace_id"></a> [log\_analytics\_workspace\_id](#input\_log\_analytics\_workspace\_id) | The name of log analytics workspace resource id | `any` | `null` | no |
| <a name="input_log_analytics_workspace_primary_shared_key"></a> [log\_analytics\_workspace\_primary\_shared\_key](#input\_log\_analytics\_workspace\_primary\_shared\_key) | The Primary shared key for the Log Analytics Workspace | `any` | `null` | no |
| <a name="input_managed_identity_ids"></a> [managed\_identity\_ids](#input\_managed\_identity\_ids) | A list of User Managed Identity ID's which should be assigned to the Linux Virtual Machine Scale Set. | `any` | `null` | no |
| <a name="input_managed_identity_type"></a> [managed\_identity\_type](#input\_managed\_identity\_type) | The type of Managed Identity which should be assigned to the Linux Virtual Machine Scale Set. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned` | `any` | `null` | no |
| <a name="input_maximum_instances_count"></a> [maximum\_instances\_count](#input\_maximum\_instances\_count) | The maximum number of instances for this resource. Valid values are between 0 and 1000 | `string` | `""` | no |
| <a name="input_minimum_instances_count"></a> [minimum\_instances\_count](#input\_minimum\_instances\_count) | The minimum number of instances for this resource. Valid values are between 0 and 1000 | `any` | `null` | no |
| <a name="input_nat_pool_frontend_ports"></a> [nat\_pool\_frontend\_ports](#input\_nat\_pool\_frontend\_ports) | Optional override for default NAT ports | `list(number)` | <pre>[<br>  50000,<br>  50119<br>]</pre> | no |
| <a name="input_nsg_diag_logs"></a> [nsg\_diag\_logs](#input\_nsg\_diag\_logs) | NSG Monitoring Category details for Azure Diagnostic setting | `list` | <pre>[<br>  "NetworkSecurityGroupEvent",<br>  "NetworkSecurityGroupRuleCounter"<br>]</pre> | no |
| <a name="input_nsg_inbound_rules"></a> [nsg\_inbound\_rules](#input\_nsg\_inbound\_rules) | List of network rules to apply to network interface. | `list` | `[]` | no |
| <a name="input_number_of_probes"></a> [number\_of\_probes](#input\_number\_of\_probes) | The number of failed probe attempts after which the backend endpoint is removed from rotation. The default value is `2`. `NumberOfProbes` multiplied by `intervalInSeconds` value must be greater or equal to 10.Endpoints are returned to rotation when at least one probe is successful. | `any` | `null` | no |
| <a name="input_os_disk_caching"></a> [os\_disk\_caching](#input\_os\_disk\_caching) | The Type of Caching which should be used for the Internal OS Disk. Possible values are `None`, `ReadOnly` and `ReadWrite` | `string` | `"ReadWrite"` | no |
| <a name="input_os_disk_storage_account_type"></a> [os\_disk\_storage\_account\_type](#input\_os\_disk\_storage\_account\_type) | The Type of Storage Account which should back this the Internal OS Disk. Possible values include `Standard_LRS`, `StandardSSD_LRS` and `Premium_LRS`. | `string` | `"StandardSSD_LRS"` | no |
| <a name="input_os_flavor"></a> [os\_flavor](#input\_os\_flavor) | Specify the flavour of the operating system image to deploy VMSS. Valid values are `windows` and `linux` | `string` | `"windows"` | no |
| <a name="input_os_upgrade_mode"></a> [os\_upgrade\_mode](#input\_os\_upgrade\_mode) | Specifies how Upgrades (e.g. changing the Image/SKU) should be performed to Virtual Machine Instances. Possible values are Automatic, Manual and Rolling. Defaults to Automatic | `string` | `"Automatic"` | no |
| <a name="input_overprovision"></a> [overprovision](#input\_overprovision) | Should Azure over-provision Virtual Machines in this Scale Set? This means that multiple Virtual Machines will be provisioned and Azure will keep the instances which become available first - which improves provisioning success rates and improves deployment time. You're not billed for these over-provisioned VM's and they don't count towards the Subscription Quota. Defaults to true. | `bool` | `false` | no |
| <a name="input_pip_diag_logs"></a> [pip\_diag\_logs](#input\_pip\_diag\_logs) | Load balancer Public IP Monitoring Category details for Azure Diagnostic setting | `list` | <pre>[<br>  "DDoSProtectionNotifications",<br>  "DDoSMitigationFlowLogs",<br>  "DDoSMitigationReports"<br>]</pre> | no |
| <a name="input_platform_fault_domain_count"></a> [platform\_fault\_domain\_count](#input\_platform\_fault\_domain\_count) | Specifies the number of fault domains that are used by this Linux Virtual Machine Scale Set. | `any` | `null` | no |
| <a name="input_private_ip_address_allocation_type"></a> [private\_ip\_address\_allocation\_type](#input\_private\_ip\_address\_allocation\_type) | The allocation method for the Private IP Address used by this Load Balancer. Possible values as Dynamic and Static. | `string` | `"Dynamic"` | no |
| <a name="input_public_ip_allocation_method"></a> [public\_ip\_allocation\_method](#input\_public\_ip\_allocation\_method) | Defines the allocation method for this IP address. Possible values are `Static` or `Dynamic` | `string` | `"Static"` | no |
| <a name="input_public_ip_prefix_id"></a> [public\_ip\_prefix\_id](#input\_public\_ip\_prefix\_id) | The ID of the Public IP Address Prefix from where Public IP Addresses should be allocated | `any` | `null` | no |
| <a name="input_public_ip_sku"></a> [public\_ip\_sku](#input\_public\_ip\_sku) | The SKU of the Public IP. Accepted values are `Basic` and `Standard` | `string` | `"Standard"` | no |
| <a name="input_public_ip_sku_tier"></a> [public\_ip\_sku\_tier](#input\_public\_ip\_sku\_tier) | The SKU Tier that should be used for the Public IP. Possible values are `Regional` and `Global` | `string` | `"Regional"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | A container that holds related resources for an Azure solution | `string` | `""` | no |
| <a name="input_rolling_upgrade_policy"></a> [rolling\_upgrade\_policy](#input\_rolling\_upgrade\_policy) | Enabling automatic OS image upgrades on your scale set helps ease update management by safely and automatically upgrading the OS disk for all instances in the scale set. | <pre>object({<br>    max_batch_instance_percent              = number<br>    max_unhealthy_instance_percent          = number<br>    max_unhealthy_upgraded_instance_percent = number<br>    pause_time_between_batches              = string<br>  })</pre> | <pre>{<br>  "max_batch_instance_percent": 20,<br>  "max_unhealthy_instance_percent": 20,<br>  "max_unhealthy_upgraded_instance_percent": 20,<br>  "pause_time_between_batches": "PT0S"<br>}</pre> | no |
| <a name="input_scale_in_cpu_percentage_threshold"></a> [scale\_in\_cpu\_percentage\_threshold](#input\_scale\_in\_cpu\_percentage\_threshold) | Specifies the threshold of the metric that triggers the scale in action. | `string` | `"20"` | no |
| <a name="input_scale_in_policy"></a> [scale\_in\_policy](#input\_scale\_in\_policy) | The scale-in policy rule that decides which virtual machines are chosen for removal when a Virtual Machine Scale Set is scaled in. Possible values for the scale-in policy rules are `Default`, `NewestVM` and `OldestVM` | `string` | `"Default"` | no |
| <a name="input_scale_out_cpu_percentage_threshold"></a> [scale\_out\_cpu\_percentage\_threshold](#input\_scale\_out\_cpu\_percentage\_threshold) | Specifies the threshold % of the metric that triggers the scale out action. | `string` | `"80"` | no |
| <a name="input_scaling_action_instances_number"></a> [scaling\_action\_instances\_number](#input\_scaling\_action\_instances\_number) | The number of instances involved in the scaling action | `string` | `"1"` | no |
| <a name="input_single_placement_group"></a> [single\_placement\_group](#input\_single\_placement\_group) | Allow to have cluster of 100 VMs only | `bool` | `true` | no |
| <a name="input_source_image_id"></a> [source\_image\_id](#input\_source\_image\_id) | The ID of an Image which each Virtual Machine in this Scale Set should be based on | `any` | `null` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | The name of the hub storage account to store logs | `any` | `null` | no |
| <a name="input_storage_account_uri"></a> [storage\_account\_uri](#input\_storage\_account\_uri) | The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor. Passing a `null` value will utilize a Managed Storage Account to store Boot Diagnostics. | `any` | `null` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | The name of the subnet to use in VM scale set | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | `{}` | no |
| <a name="input_virtual_machine_size"></a> [virtual\_machine\_size](#input\_virtual\_machine\_size) | The Virtual Machine SKU for the Scale Set, Default is Standard\_A2\_V2 | `string` | `"Standard_A2_v2"` | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | The name of the virtual network | `string` | `""` | no |
| <a name="input_vm_time_zone"></a> [vm\_time\_zone](#input\_vm\_time\_zone) | Specifies the Time Zone which should be used by the Virtual Machine | `any` | `null` | no |
| <a name="input_vmscaleset_name"></a> [vmscaleset\_name](#input\_vmscaleset\_name) | The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the name field. If the value of the name field is not a valid computer\_name\_prefix, then you must specify computer\_name\_prefix | `string` | `""` | no |
| <a name="input_windows_distribution_list"></a> [windows\_distribution\_list](#input\_windows\_distribution\_list) | n/a | <pre>map(object({<br>    publisher = string<br>    offer     = string<br>    sku       = string<br>    version   = string<br>  }))</pre> | <pre>{<br>  "mssql2017exp": {<br>    "offer": "SQL2017-WS2016",<br>    "publisher": "MicrosoftSQLServer",<br>    "sku": "Express",<br>    "version": "latest"<br>  },<br>  "windows2012r2dc": {<br>    "offer": "WindowsServer",<br>    "publisher": "MicrosoftWindowsServer",<br>    "sku": "2012-R2-Datacenter",<br>    "version": "latest"<br>  },<br>  "windows2016dc": {<br>    "offer": "WindowsServer",<br>    "publisher": "MicrosoftWindowsServer",<br>    "sku": "2016-Datacenter",<br>    "version": "latest"<br>  },<br>  "windows2019dc": {<br>    "offer": "WindowsServer",<br>    "publisher": "MicrosoftWindowsServer",<br>    "sku": "2019-Datacenter",<br>    "version": "latest"<br>  }<br>}</pre> | no |
| <a name="input_windows_distribution_name"></a> [windows\_distribution\_name](#input\_windows\_distribution\_name) | Variable to pick an OS flavour for Windows based VMSS possible values include: winserver, wincore, winsql | `string` | `"windows2019dc"` | no |
| <a name="input_winrm_protocol"></a> [winrm\_protocol](#input\_winrm\_protocol) | Specifies the protocol of winrm listener. Possible values are `Http` or `Https` | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_admin_ssh_key_private"></a> [admin\_ssh\_key\_private](#output\_admin\_ssh\_key\_private) | The generated private key data in PEM format |
| <a name="output_admin_ssh_key_public"></a> [admin\_ssh\_key\_public](#output\_admin\_ssh\_key\_public) | The generated public key data in PEM format |
| <a name="output_linux_virtual_machine_scale_set_id"></a> [linux\_virtual\_machine\_scale\_set\_id](#output\_linux\_virtual\_machine\_scale\_set\_id) | The resource ID of the Linux Virtual Machine Scale Set. |
| <a name="output_linux_virtual_machine_scale_set_name"></a> [linux\_virtual\_machine\_scale\_set\_name](#output\_linux\_virtual\_machine\_scale\_set\_name) | The name of the Linux Virtual Machine Scale Set. |
| <a name="output_linux_virtual_machine_scale_set_unique_id"></a> [linux\_virtual\_machine\_scale\_set\_unique\_id](#output\_linux\_virtual\_machine\_scale\_set\_unique\_id) | The unique ID of the Linux Virtual Machine Scale Set. |
| <a name="output_load_balancer_health_probe_id"></a> [load\_balancer\_health\_probe\_id](#output\_load\_balancer\_health\_probe\_id) | The resource ID of the Load Balancer health Probe. |
| <a name="output_load_balancer_nat_pool_id"></a> [load\_balancer\_nat\_pool\_id](#output\_load\_balancer\_nat\_pool\_id) | The resource ID of the Load Balancer NAT pool. |
| <a name="output_load_balancer_private_ip"></a> [load\_balancer\_private\_ip](#output\_load\_balancer\_private\_ip) | The Private IP address allocated for load balancer |
| <a name="output_load_balancer_public_ip"></a> [load\_balancer\_public\_ip](#output\_load\_balancer\_public\_ip) | The Public IP address allocated for load balancer |
| <a name="output_load_balancer_rules_id"></a> [load\_balancer\_rules\_id](#output\_load\_balancer\_rules\_id) | The resource ID of the Load Balancer Rule |
| <a name="output_network_security_group_id"></a> [network\_security\_group\_id](#output\_network\_security\_group\_id) | The resource id of Network security group |
| <a name="output_windows_virtual_machine_scale_set_id"></a> [windows\_virtual\_machine\_scale\_set\_id](#output\_windows\_virtual\_machine\_scale\_set\_id) | The resource ID of the windows Virtual Machine Scale Set. |
| <a name="output_windows_virtual_machine_scale_set_name"></a> [windows\_virtual\_machine\_scale\_set\_name](#output\_windows\_virtual\_machine\_scale\_set\_name) | The name of the windows Virtual Machine Scale Set. |
| <a name="output_windows_virtual_machine_scale_set_unique_id"></a> [windows\_virtual\_machine\_scale\_set\_unique\_id](#output\_windows\_virtual\_machine\_scale\_set\_unique\_id) | The unique ID of the windows Virtual Machine Scale Set. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
