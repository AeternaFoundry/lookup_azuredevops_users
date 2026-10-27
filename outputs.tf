output "users_lookup_id" {
  description = "Map of id values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.azuredevops_users.users_lookup : k => v.id }
}
output "users_lookup_features" {
  description = "Map of features values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.azuredevops_users.users_lookup : k => one(v.features) }
}
output "users_lookup_origin" {
  description = "Map of origin values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.azuredevops_users.users_lookup : k => v.origin }
}
output "users_lookup_origin_id" {
  description = "Map of origin_id values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.azuredevops_users.users_lookup : k => v.origin_id }
}
output "users_lookup_principal_name" {
  description = "Map of principal_name values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.azuredevops_users.users_lookup : k => v.principal_name }
}
output "users_lookup_subject_types" {
  description = "Map of subject_types values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.azuredevops_users.users_lookup : k => v.subject_types }
}
output "users_lookup_users" {
  description = "Map of users values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.azuredevops_users.users_lookup : k => v.users }
}

