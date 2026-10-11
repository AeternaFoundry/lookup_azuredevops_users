variable "users_lookup" {
  description = <<EOT
Map of users_lookup, attributes below
Optional:
    - origin
    - origin_id
    - principal_name
    - subject_types
    - features (block):
        - concurrent_workers (optional)
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    origin         = optional(string)
    origin_id      = optional(string)
    principal_name = optional(string)
    subject_types  = optional(set(string))
    features = optional(object({
      concurrent_workers = optional(number)
    }))
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.users_lookup : (
        v.principal_name == null || (length(trimspace(v.principal_name)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.users_lookup : (
        v.origin == null || (length(trimspace(v.origin)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.users_lookup : (
        v.origin_id == null || (length(trimspace(v.origin_id)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.users_lookup : (
        v.features == null || (v.features.concurrent_workers == null || (v.features.concurrent_workers >= 1))
      )
    ])
    error_message = "must be at least 1"
  }
}

