
resource "azurerm_app_service_plan" "consumptionplan1" {
  name                = var.app_service_plan1
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "Windows"
  reserved            = false

  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}