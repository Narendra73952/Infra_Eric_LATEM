variable "sql_server" {
  type = map(object({

    sql_server                  = string
    rg_name                     = string
    rg_location                 = string
    administrator_login         = string
    administrator_login_password = string
    sql_version=string

     minimum_tls_version          = string
    login_username = string
    object_id      =string

  }))

}
