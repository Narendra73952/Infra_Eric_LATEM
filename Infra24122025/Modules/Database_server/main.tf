resource "azurerm_mssql_server" "sql_server" {
  for_each                     = var.sql_server
  name                      = each.value.sql_server
  resource_group_name          = each.value.rg_name
  location                     = each.value.rg_location
  version                      = each.value.sql_version
  administrator_login          = each.value.administrator_login
  administrator_login_password = each.value.administrator_login_password
  
  minimum_tls_version          = each.value.minimum_tls_version



  azuread_administrator {
  
    login_username = each.value.login_username
    object_id      = each.value.object_id
  }


}