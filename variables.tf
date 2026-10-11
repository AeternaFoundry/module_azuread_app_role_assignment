variable "app_role_assignments" {
  description = <<EOT
Map of app_role_assignments, attributes below
Required:
    - app_role_id
    - principal_object_id
    - resource_object_id
EOT

  type = map(object({
    app_role_id         = string
    principal_object_id = string
    resource_object_id  = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.app_role_assignments : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.app_role_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_role_assignments : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.principal_object_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_role_assignments : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.resource_object_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

