resource "azurerm_resource_group" "rgb1" {
    for_each=var.rgs
    name=each.value.rg_name
    location=each.value.rg_location 
}



