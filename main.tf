# Create a resource group using the generated random name
resource "azurerm_resource_group" "example" {
  location = var.resource_group_location
  name     = var.resource_group_name_prefix
}

resource "azurerm_virtual_network" "example" {
  name                = "homework-network"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name             = "subnet-firewall"
    address_prefixes = ["10.0.1.0/24"]
  }

  subnet {
    name             = "subnet-gateway"
    address_prefixes = ["10.0.2.0/24"]
    }

    subnet {
    name             = "subnet-appservice"
    address_prefixes = ["10.0.3.0/24"]
      }

  tags = {
    environment = "homework"
  }
} 