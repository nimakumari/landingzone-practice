parent_rg = {
  rg1 = {
    name     = "dev-rg"
    location = "centralindia"
  }
}

parent_vnets = {
  vnet1 = {
    name                = "dev-vnet"
    location            = "centralindia"
    resource_group_name = "dev-rg"
    address_space       = ["10.0.0.0/16"]
  }
}

parent_subnets = {
  subnet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "dev-rg"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "backend-subnet"
    resource_group_name  = "dev-rg"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet3 = {
  name                 = "appgw-subnet"
  resource_group_name  = "dev-rg"
  virtual_network_name = "dev-vnet"
  address_prefixes     = ["10.0.3.0/24"]
}
}

parent_pip = {
  pip1 = {
    name                = "frontend-pip"
    location            = "centralindia"
    resource_group_name = "dev-rg"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "backend-pip"
    location            = "centralindia"
    resource_group_name = "dev-rg"
    allocation_method   = "Static"
  }
  pip3 = {
  name                = "appgw-pip"
  location            = "centralindia"
  resource_group_name = "dev-rg"
  allocation_method   = "Static"
}
}

parent_nic = {
  nic1 = {
    name                          = "frontend-nic"
    location                      = "centralindia"
    resource_group_name           = "dev-rg"
    virtual_network_name          = "dev-vnet"
    subnet_name                   = "frontend-subnet"
    private_ip_address_allocation = "Dynamic"
    public_ip_name                = "frontend-pip"
    ip_configuration_name         = "front-ipconfig"

  }
  nic2 = {
    name                          = "backend-nic"
    location                      = "centralindia"
    resource_group_name           = "dev-rg"
    virtual_network_name          = "dev-vnet"
    subnet_name                   = "backend-subnet"
    private_ip_address_allocation = "Dynamic"
    public_ip_name                = "backend-pip"
    ip_configuration_name         = "back-ipconfig"
  }
}

parent_vm = {
  vm1 = {
    name                            = "frontend-vm"
    resource_group_name             = "dev-rg"
    location                        = "centralindia"
    virtual_network_name            = "dev-vnet"
    subnate_name                    = "frontend-subnet"
    ip_name                         = "internal"
    public_ip_name                  = "frontend-pip"
    nic_name                        = "frontend-nic"
    vm_size                         = "Standard_D2s_v3"
    admin_username                  = "adminuser"
    admin_password                  = "devopsinsider@123"
    caching                         = "ReadWrite"
    storage_account_type            = "Standard_LRS"
    publisher                       = "Canonical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"
    disable_password_authentication = false

  }
  vm2 = {
    name                            = "backend-vm"
    resource_group_name             = "dev-rg"
    location                        = "centralindia"
    virtual_network_name            = "dev-vnet"
    subnate_name                    = "backend-subnet"
    ip_name                         = "internal"
    public_ip_name                  = "backend-pip"
    nic_name                        = "backend-nic"
    vm_size                         = "Standard_D2s_v3"
    admin_username                  = "adminuser"
    admin_password                  = "devopsinsider@123"
    caching                         = "ReadWrite"
    storage_account_type            = "Standard_LRS"
    publisher                       = "Canonical"
    offer                           = "0001-com-ubuntu-server-focal"
    sku                             = "20_04-lts"
    version                         = "latest"
    disable_password_authentication = false
  }

}
# parent_appgw = {
#   appgw1 = {
#     name                = "dev-appgw"
#     resource_group_name = "dev-rg"
#     location            = "centralindia"

#     subnet_name = "appgw-subnet"
#     virtual_network_name   = "dev-vnet"

#     public_ip_name = "appgw-pip"

#     gateway_ip_configuration_name = "appgw-ip-config"

#     frontend_port_name             = "frontend-port"
#     frontend_ip_configuration_name = "frontend-ip"

#     backend_address_pool_name = "backend-pool"

#     http_setting_name         = "backend-http"
#     listener_name             = "http-listener"
#     request_routing_rule_name = "routing-rule"
#   }
# }

