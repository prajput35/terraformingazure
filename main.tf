module appserviceplan{
    resource_group_name = var.resourcegroup
    location = var.location
    source="./modules/app-service-plan"
}

module appinsights{
    resource_group_name = var.resourcegroup
    location = var.location
    source="./modules/app-insights"
}

module webapptelemetry{
    resource_group_name = var.resourcegroup
    location = var.location
    app_service_plan_id = module.appserviceplan.app_service_plan_id
    instrumentation_key = module.appinsights.instrumentation_key
    source="./modules/web-app-telemetry"
}