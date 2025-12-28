data "azurerm_mssql_server" "db_server" {
  for_each            = var.database
  name                = each.value.sql_server
  resource_group_name = each.value.rg_name
}

resource "azurerm_mssql_database" "database" {
  for_each     = var.database
  name         = each.value.database_name
  server_id    = data.azurerm_mssql_server.db_server[each.key].id
  collation    = each.value.collation
  license_type = each.value.license_type
  max_size_gb  = each.value.max_size_gb
  enclave_type = each.value.enclave_type
   sku_name     = each.value.sku_name
}




