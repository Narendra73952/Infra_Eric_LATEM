variable "vnet" {
  type = map(object({
  vnet_name=string
  rg_location=string
  rg_name=string
   address_space=list(string)
   #nic_name=string
   
  }))  
}

