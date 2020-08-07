resource "azurerm_application_insights" "appinsights_tf" {
  name                = var.app_insights
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = "web"
}

output "instrumentation_key" {
  value = azurerm_application_insights.appinsights_tf.instrumentation_key
}