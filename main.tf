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