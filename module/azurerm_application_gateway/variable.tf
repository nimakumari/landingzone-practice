# variable "child_appgw" {
#   type = map(object({
#     name                           = string
#     resource_group_name            = string
#     location                       = string
#     subnet_name                    = string
#     virtual_network_name           = string
#     public_ip_name                 = string
#     gateway_ip_configuration_name  = string
#     frontend_port_name             = string
#     frontend_ip_configuration_name = string
#     backend_address_pool_name      = string
#     http_setting_name              = string
#     listener_name                  = string
#     request_routing_rule_name      = string
#   }))
# }