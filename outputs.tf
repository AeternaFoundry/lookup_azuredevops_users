output "users_lookup_id" {
  description = "Map of id values across all users_lookup, keyed the same as var.users_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_users.users_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "users_lookup_features" {
  description = "Map of features values across all users_lookup, keyed the same as var.users_lookup except keys with no features are omitted"
  value       = { for k, v in data.azuredevops_users.users_lookup : k => one(v.features) if v.features != null && length(v.features) > 0 }
}
output "users_lookup_origin" {
  description = "Map of origin values across all users_lookup, keyed the same as var.users_lookup except keys with no origin are omitted"
  value       = { for k, v in data.azuredevops_users.users_lookup : k => v.origin if v.origin != null && length(v.origin) > 0 }
}
output "users_lookup_origin_id" {
  description = "Map of origin_id values across all users_lookup, keyed the same as var.users_lookup except keys with no origin_id are omitted"
  value       = { for k, v in data.azuredevops_users.users_lookup : k => v.origin_id if v.origin_id != null && length(v.origin_id) > 0 }
}
output "users_lookup_principal_name" {
  description = "Map of principal_name values across all users_lookup, keyed the same as var.users_lookup except keys with no principal_name are omitted"
  value       = { for k, v in data.azuredevops_users.users_lookup : k => v.principal_name if v.principal_name != null && length(v.principal_name) > 0 }
}
output "users_lookup_subject_types" {
  description = "Map of subject_types values across all users_lookup, keyed the same as var.users_lookup except keys with no subject_types are omitted"
  value       = { for k, v in data.azuredevops_users.users_lookup : k => v.subject_types if v.subject_types != null && length(v.subject_types) > 0 }
}
output "users_lookup_users" {
  description = "Map of users values across all users_lookup, keyed the same as var.users_lookup except keys with no users are omitted"
  value       = { for k, v in data.azuredevops_users.users_lookup : k => v.users if v.users != null && length(v.users) > 0 }
}

