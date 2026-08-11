module "rgdetails" {
  source   = "../../module/azurerm_rg"
  child_rg = var.parent_rg

}
module "vnet_details" {
  depends_on = [module.rgdetails]
  source     = "../../module/azurerm_vnet"
  child_vnet = var.parent_vnets

}
module "subnet_details" {
  depends_on   = [module.vnet_details]
  source       = "../../module/azurerm_subnet"
  child_subnet = var.parent_subnets

}

module "nic_details" {
  depends_on = [module.subnet_details]
  source     = "../../module/azurerm_nic"
  child_nic  = var.parent_nic

}

module "pip_details" {
  depends_on = [module.rgdetails]
  source     = "../../module/azurerm_pip"
  child_pip  = var.parent_pip
}

module "vm_details" {
  depends_on = [module.nic_details, module.pip_details]
  source     = "../../module/azurerm_vm"
  child_vm   = var.parent_vm


}

# module "app_gatway_details" {

#   source = "../../module/azurerm_application_gateway"

#   child_appgw = var.parent_appgw
# }