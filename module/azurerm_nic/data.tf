data "azurerm_subnet" "datasubnet" {
    for_each = var.child_nic
    name = each.value.subnet_name
    virtual_network_name = each.value.virtual_network_name
    resource_group_name = each.value.resource_group_name
}

data "azurerm_public_ip" "datapip" {
  for_each = var.child_nic
  name                = each.value.public_ip_name
  resource_group_name = each.value.resource_group_name
}