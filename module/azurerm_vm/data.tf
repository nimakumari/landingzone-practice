data "azurerm_network_interface" "datanic" {
    for_each = var.child_vm
    name = each.value.nic_name
    resource_group_name = each.value.resource_group_name
}
