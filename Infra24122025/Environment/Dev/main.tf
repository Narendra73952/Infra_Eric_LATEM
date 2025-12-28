module "rg" {
  source = "../../Modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../Modules/virtual_network"
  vnet       = var.vnet
}


module "subnet" {
  depends_on = [module.vnet]
  source     = "../../Modules/subnet"
  subnet     = var.subnet
}


module "pip" {
  depends_on = [module.rg]
  source     = "../../Modules/public_ip"
  pip        = var.pip
}



module "vms" {
  depends_on = [module.rg, module.pip, module.vnet, module.subnet]
  source     = "../../Modules/azurerm_virtual_machine"
  vms        = var.vms
}

module "sql_server" {
  depends_on = [module.rg]
  source     = "../../Modules/Database_server"
  sql_server = var.sql_server
}


module "database" {
  depends_on = [module.rg, module.sql_server]
  source     = "../../Modules/mssql_database"
  database   = var.database
}











