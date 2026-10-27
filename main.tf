resource "azuread_app_role_assignment" "app_role_assignments" {
  for_each = var.app_role_assignments

  app_role_id         = each.value.app_role_id
  principal_object_id = each.value.principal_object_id
  resource_object_id  = each.value.resource_object_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
    }
  }
}

