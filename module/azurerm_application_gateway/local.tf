# locals {
#   backend_address_pool_name      = "${azurerm_virtual_network.vnets.name}-beap"
#   frontend_port_name             = "${azurerm_virtual_network.vnets.name}-feport"
#   frontend_ip_configuration_name = "${azurerm_virtual_network.vnets.name}-feip"
#   http_setting_name              = "${azurerm_virtual_network.vnets.name}-be-htst"
#   listener_name                  = "${azurerm_virtual_network.vnets.name}-httplstn"
#   request_routing_rule_name      = "${azurerm_virtual_network.vnets.name}-rqrt"
#   redirect_configuration_name    = "${azurerm_virtual_network.vnets.name}-rdrcfg"
# }