provider "azurerm" {
  features {}
}

# Groupe de Ressources
resource "azurerm_resource_group" "main" {
  name     = var.rg_name
  location = var.location
}

# PostgreSQL Flexible Server
resource "azurerm_postgresql_flexible_server" "main" {
  name                = var.postgresql_server_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  administrator_login = var.administrator_login
  administrator_login_password = var.administrator_password
  sku_name            = "GP_Gen5_2"
  storage_mb          = 5120
  version             = "13"
}
