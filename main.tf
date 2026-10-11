data "azuredevops_users" "users_lookup" {
  for_each = var.users_lookup

  origin         = each.value.origin
  origin_id      = each.value.origin_id
  principal_name = each.value.principal_name
  subject_types  = each.value.subject_types

  dynamic "features" {
    for_each = each.value.features != null ? [each.value.features] : []
    content {
      concurrent_workers = features.value.concurrent_workers
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

