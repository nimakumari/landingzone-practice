# resource "azurerm_application_gateway" "appgw" {

#   for_each = var.child_appgw

#   name                = each.value.name
#   resource_group_name = each.value.resource_group_name
#   location            = each.value.location

#   sku {
#     name     = "Standard_v2"
#     tier     = "Standard_v2"
#     capacity = 2
#   }

#   gateway_ip_configuration {
#     name      = each.value.gateway_ip_configuration_name
#     subnet_id = data.azurerm_subnet.appgw_subnet[each.key].id
#   }

#   frontend_port {
#     name = each.value.frontend_port_name
#     port = 80
#   }

#   frontend_ip_configuration {
#     name                 = each.value.frontend_ip_configuration_name
#     public_ip_address_id = data.azurerm_public_ip.appgw_pip[each.key].id
#   }

#   backend_address_pool {
#     name = each.value.backend_address_pool_name
#   }

#   backend_http_settings {
#     name                  = each.value.http_setting_name
#     cookie_based_affinity = "Disabled"
#     port                  = 80
#     protocol              = "Http"
#     request_timeout       = 60
#   }

#   http_listener {
#     name                           = each.value.listener_name
#     frontend_ip_configuration_name = each.value.frontend_ip_configuration_name
#     frontend_port_name              = each.value.frontend_port_name
#     protocol                       = "Http"
#   }

#   request_routing_rule {
#     name                       = each.value.request_routing_rule_name
#     priority                   = 100
#     rule_type                  = "Basic"
#     http_listener_name         = each.value.listener_name
#     backend_address_pool_name  = each.value.backend_address_pool_name
#     backend_http_settings_name = each.value.http_setting_name
#   }
# }