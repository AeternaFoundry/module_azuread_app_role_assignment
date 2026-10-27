output "app_role_assignments_id" {
  description = "Map of id values across all app_role_assignments, keyed the same as var.app_role_assignments"
  value       = { for k, v in azuread_app_role_assignment.app_role_assignments : k => v.id }
}
output "app_role_assignments_app_role_id" {
  description = "Map of app_role_id values across all app_role_assignments, keyed the same as var.app_role_assignments"
  value       = { for k, v in azuread_app_role_assignment.app_role_assignments : k => v.app_role_id }
}
output "app_role_assignments_principal_display_name" {
  description = "Map of principal_display_name values across all app_role_assignments, keyed the same as var.app_role_assignments"
  value       = { for k, v in azuread_app_role_assignment.app_role_assignments : k => v.principal_display_name }
}
output "app_role_assignments_principal_object_id" {
  description = "Map of principal_object_id values across all app_role_assignments, keyed the same as var.app_role_assignments"
  value       = { for k, v in azuread_app_role_assignment.app_role_assignments : k => v.principal_object_id }
}
output "app_role_assignments_principal_type" {
  description = "Map of principal_type values across all app_role_assignments, keyed the same as var.app_role_assignments"
  value       = { for k, v in azuread_app_role_assignment.app_role_assignments : k => v.principal_type }
}
output "app_role_assignments_resource_display_name" {
  description = "Map of resource_display_name values across all app_role_assignments, keyed the same as var.app_role_assignments"
  value       = { for k, v in azuread_app_role_assignment.app_role_assignments : k => v.resource_display_name }
}
output "app_role_assignments_resource_object_id" {
  description = "Map of resource_object_id values across all app_role_assignments, keyed the same as var.app_role_assignments"
  value       = { for k, v in azuread_app_role_assignment.app_role_assignments : k => v.resource_object_id }
}

