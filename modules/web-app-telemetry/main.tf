resource "azurerm_app_service" "telemetry_app" {
    name                = var.app_service_name
    location            = var.location
    resource_group_name = var.resource_group_name
    app_service_plan_id = var.app_service_plan_id

    site_config {
        windows_fx_version = "DOTNETCORE|3.1"
    }
    #app_settings {
    #    "APPINSIGHTS_INSTRUMENTATIONKEY" = var.instrumentation_key
    #}
}