resource "azurerm_network_security_group" "nsg" {
    name                = "nsg_mehar"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
}


    resource "azurerm_network_security_rule" "example" {
        name                        = "allow-rdp"
        priority                    = 100
        direction                   = "Inbound"
        access                      = "Allow"
        protocol                    = "Tcp"
        source_port_range           = "*"
        destination_port_ranges     = ["3389"]
        source_address_prefix       = "*"
        destination_address_prefix  = "*"
        resource_group_name         = azurerm_resource_group.rg.name
        network_security_group_name = azurerm_network_security_group.nsg.name
    }
