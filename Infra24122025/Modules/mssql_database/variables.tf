
variable "database" {
  type = map(object({
    sql_server    = string
    database_name = string
    rg_name=string

    collation    = string
    license_type = string
    max_size_gb  = number
    enclave_type = string
     sku_name     = string 

  }))

}
