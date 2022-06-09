# Terraform Cloud configuration
terraform {
        backend "remote" {
            organization = "The38Dev"
            workspaces {
                name = "VMScaleSets"
            }
        }
}

# Azurerm provider configuration
provider "azurerm" {
  features {}
}

data "azurerm_log_analytics_workspace" "example" {
  name                = "VMSSWorkspace"
  resource_group_name = "st-vmss-rg"
}

module "random-password" {
  source  = "stsyg/random-password/azurerm"
  version = "1.0.0"
}

module "vmscaleset" {
  source  = "./module/vmscaleset"
#  version = "2.3.0"

  # VMSS Resource Group and location, VNet and Subnet detials (Required)
  resource_group_name  = "st-vmss-rg"
  virtual_network_name = "st-vmss-vnet"
  subnet_name          = "st-vmss-lab-reserve"
  vmscaleset_name      = "testvmss"

  # This module support multiple Pre-Defined Linux and Windows Distributions.
  # Check the README.md file for more pre-defined images for Ubuntu, Centos, RedHat.
  # Please make sure to use gen2 images supported VM sizes if you use gen2 distributions
  # Specify a valid password with `admin_password` argument to use your own password
  # If `admin_password` argument is not added, this module creates a random admin password
  os_flavor                 = "windows"
  windows_distribution_name = "windows2019dc"
  virtual_machine_size      = "Standard_A2_v2"
  admin_username            = "azureadmin"
  admin_password            = module.random-password.password
  instances_count           = 2

  # Proxymity placement group, Automatic Instance repair and adding Public IP to VM's are optional.
  # remove these argument from module if you dont want to use it.  
  enable_proximity_placement_group    = true
  assign_public_ip_to_each_vm_in_vmss = true
  enable_automatic_instance_repair    = true
  intall_iis_server_on_instances      = true

  # Public and private load balancer support for VM scale sets
  # Specify health probe port to allow LB to detect the backend endpoint status
  # Standard Load Balancer helps load-balance TCP and UDP flows on all ports simultaneously
  # Specify the list of ports based on your requirement for Load balanced ports
  # for additional data disks, provide the list for required size for the disk. 
  load_balancer_type              = "private"
  load_balancer_health_probe_port = 80
  load_balanced_port_list         = [80, 443]
  additional_data_disks           = [100, 200]

  # Enable Auto scaling feature for VM scaleset by set argument to true. 
  # Instances_count in VMSS will become default and minimum instance count.
  # Automatically scale out the number of VM instances based on CPU Average only.    
  enable_autoscale_for_vmss          = true
  minimum_instances_count            = 2
  maximum_instances_count            = 100
  scale_out_cpu_percentage_threshold = 80
  scale_in_cpu_percentage_threshold  = 20

  # Boot diagnostics to troubleshoot virtual machines, by default uses managed 
  # To use custom storage account, specify `storage_account_name` with a valid name
  # Passing a `null` value will utilize a Managed Storage Account to store Boot Diagnostics
  enable_boot_diagnostics = true

  # Network Seurity group port allow definitions for each Virtual Machine
  # NSG association to be added automatically for all network interfaces.
  # Remove this NSG rules block, if `existing_network_security_group_id` is specified
  nsg_inbound_rules = [
    {
      name                   = "http"
      destination_port_range = "80"
      source_address_prefix  = "*"
    },

    {
      name                   = "https"
      destination_port_range = "443"
      source_address_prefix  = "*"
    },
  ]

  # (Optional) To enable Azure Monitoring and install log analytics agents
  # (Optional) Specify `storage_account_name` to save monitoring logs to storage.   
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.example.id

  # Deploy log analytics agents to virtual machine. 
  # Log analytics workspace customer id and primary shared key required.
  deploy_log_analytics_agent                 = true
  log_analytics_customer_id                  = data.azurerm_log_analytics_workspace.example.workspace_id
  log_analytics_workspace_primary_shared_key = data.azurerm_log_analytics_workspace.example.primary_shared_key

  # Adding additional TAG's to your Azure resources
  tags = {
    ProjectName  = "vmss-demo-project"
    Env          = "dev"
    Owner        = "sergiyt@outlook.com"
    BusinessUnit = "LAB"
    ServiceClass = "Gold"
  }
}

# Add vNet peering to the Bastion enabled vNet, e.g. in the lab it's st-infra-vnet

# # Lookup exisiting RG for infra vNet
# data "azurerm_resource_group" "rginfra" {
#   name     = "st-infra-rg"
# }
# 
# # VMSS vNet RG detais
# data "azurerm_virtual_network" "vnet1" {
#   name                = "st-vmss-vnet"
#   resource_group_name = "st-vmss-rg"
# }
# 
# # Infra vNet RG details
# data "azurerm_virtual_network" "vnet2" {
#   name                = "st-infra-vnet"
#   resource_group_name = data.azurerm_resource_group.rginfra.name
# }
# 
# resource "azurerm_virtual_network_peering" "vnet1to2" {
#   name                      = "peer_vNet1_to_vNet2"
#   resource_group_name       = data.azurerm_virtual_network.vnet1.resource_group_name
#   virtual_network_name      = data.azurerm_virtual_network.vnet1.name
#   remote_virtual_network_id = data.azurerm_virtual_network.vnet2.id
# }
# 
# resource "azurerm_virtual_network_peering" "vnet2to1" {
#   name                      = "peer_vNet2_to_vNet1"
#   resource_group_name       = data.azurerm_virtual_network.vnet2.resource_group_name
#   virtual_network_name      = data.azurerm_virtual_network.vnet2.name
#   remote_virtual_network_id = data.azurerm_virtual_network.vnet1.id
# }