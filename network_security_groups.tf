locals {
  network_security_group_name_prefix = "nsg-${var.region_code}-${var.network_name}"
}

# Create a default network security group
resource azurerm_network_security_group default {
  name = "${local.network_security_group_name_prefix}-default"
  location = local.resource_group_location
  resource_group_name = local.resource_group_name
  tags = merge(map("Name", "${local.network_security_group_name_prefix}-default"), local.module_common_tags)
}