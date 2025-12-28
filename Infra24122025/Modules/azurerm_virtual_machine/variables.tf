variable "vms" {
  type = map(object({
    vm_name        = string
    subnet_name    = string
    vnet_name      = string
    rg_name        = string
    rg_location=string
    pip_name       = string
    vm_size        = string
    admin_username = string
    admin_password = string
    nic_name=string
  }))

}