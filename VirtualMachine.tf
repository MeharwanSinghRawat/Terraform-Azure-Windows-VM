
resource "azurerm_windows_virtual_machine" "vm" {
    name                = "vmmehar1"
    resource_group_name = azurerm_resource_group.rg.name
    location            = azurerm_resource_group.rg.location
    size                = "Standard_DC2ds_v3"
    admin_username      = "adminuser"
    admin_password      = "Password@1234"  # Use a secure password

    network_interface_ids = [azurerm_network_interface.nic.id]

    os_disk {
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }

    source_image_reference {
        publisher = "MicrosoftWindowsServer"
        offer     = "WindowsServer"
        sku       = "2022-datacenter-azure-edition"
        version   = "latest"
    }
}



