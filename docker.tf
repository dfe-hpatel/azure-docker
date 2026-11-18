resource "azurerm_container_app_environment" "container_app_environment" {
  name                       = "cae-uks-dev-docker-demo"
  location                   = azurerm_resource_group.rg.location
  resource_group_name        = azurerm_resource_group.rg.name
}

resource "azurerm_container_app" "container_app" {
  name                         = "cae-uks-dev-docker-demo"
  container_app_environment_id = azurerm_container_app_environment.container_app_environment.id
  resource_group_name          = azurerm_resource_group.rg.name
  revision_mode                = "Single"

  template {
    container {
      name   = "containerapp"
      image  = "mcr.microsoft.com/k8se/quickstart:latest"
      cpu    = 1
      memory = "1.5Gi"
    }
  }
}