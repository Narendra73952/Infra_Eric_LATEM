variable "rgs" {
  type = map(object({
    rg_name     = string
    rg_location = string
  }))
}



variable "vnet" {
  type = map(object({
    vnet_name     = string
    rg_location   = string
    rg_name       = string
    address_space = list(string)
    #nic_name=string

  }))

}


variable "subnet" {
  type = map(object({
    subnet_name      = string
    rg_name          = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
}


variable "pip" {
  type = map(object({

    pip_name          = string
    rg_name           = string
    rg_location       = string
    allocation_method = string


  }))
}
variable "vms" {
  type = map(object({
    vm_name        = string
    subnet_name    = string
    vnet_name      = string
    rg_name        = string
    rg_location    = string
    pip_name       = string
    vm_size        = string
    admin_username = string
    admin_password = string
    nic_name       = string
  }))

}
variable "sql_server" {
  type = map(object({

    sql_server                   = string
    rg_name                      = string
    rg_location                  = string
    administrator_login          = string
    administrator_login_password = string
    sql_version                  = string

    minimum_tls_version = string
    login_username      = string
    object_id           = string

  }))

}


variable "database" {
  type = map(object({
    sql_server    = string
    database_name = string
    rg_name       = string
    collation     = string
    license_type  = string
    max_size_gb   = number
    enclave_type  = string
    sku_name      = string

  }))

}
