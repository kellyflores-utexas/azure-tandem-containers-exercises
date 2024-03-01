#resource "azurerm_kubernetes_cluster" "default" {
#  location            = azurerm_resource_group.rg-kelly-flores.location
#  name                = skynet
#  resource_group_name = azurerm_resource_group.rg-kelly-flores.name
#
#  kubernetes_version = "1.27"
#
#  default_node_pool {
#    name    = "default"
#    node_count = 2
#    vm_size = "Standard_D2_v2"
#  }
#
#  tags = {
#    environment = "Demo"
#  }
#}