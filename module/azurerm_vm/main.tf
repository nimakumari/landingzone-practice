resource "azurerm_linux_virtual_machine" "vms" {
    for_each = var.child_vm
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    size = each.value.vm_size
    admin_username = each.value.admin_username
    admin_password = each.value.admin_password
    network_interface_ids = [data.azurerm_network_interface.datanic[each.key].id]
    disable_password_authentication = each.value.disable_password_authentication

    os_disk {
    caching              = each.value.caching
    storage_account_type = each.value.storage_account_type
  }

  source_image_reference {
    # publisher = "Canonical"
    # offer     = "0001-com-ubuntu-server-jammy"
    # sku       = "22_04-lts"
    # version   = "latest"
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }
  }
