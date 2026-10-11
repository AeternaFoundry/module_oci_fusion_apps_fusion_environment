variable "fusion_apps_fusion_environments" {
  description = <<EOT
Map of fusion_apps_fusion_environments, attributes below
Required:
    - compartment_id
    - display_name
    - fusion_environment_family_id
    - fusion_environment_type
    - create_fusion_environment_admin_user_details (block):
        - email_address (required)
        - first_name (required)
        - last_name (required)
        - username (required)
Optional:
    - additional_language_packs
    - defined_tags
    - dns_prefix
    - freeform_tags
    - is_ipv6dual_stack_enabled
    - kms_key_id
    - additional_egress_rules (block):
        - description (required)
        - destination_cidr (required)
        - max_destination_port (required)
        - min_destination_port (required)
    - maintenance_policy (block):
        - environment_maintenance_override (optional)
        - monthly_patching_override (optional)
    - rules (block):
        - action (required)
        - conditions (required, block):
            - attribute_name (required)
            - attribute_value (required)
        - description (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id               = string
    display_name                 = string
    fusion_environment_family_id = string
    fusion_environment_type      = string
    additional_language_packs    = optional(list(string))
    defined_tags                 = optional(map(string))
    dns_prefix                   = optional(string)
    freeform_tags                = optional(map(string))
    is_ipv6dual_stack_enabled    = optional(bool)
    kms_key_id                   = optional(string)
    create_fusion_environment_admin_user_details = object({
      email_address = string
      first_name    = string
      last_name     = string
      username      = string
    })
    additional_egress_rules = optional(list(object({
      description          = string
      destination_cidr     = string
      max_destination_port = number
      min_destination_port = number
    })))
    maintenance_policy = optional(object({
      environment_maintenance_override = optional(string)
      monthly_patching_override        = optional(string)
    }))
    rules = optional(list(object({
      action = string
      conditions = list(object({
        attribute_name  = string
        attribute_value = string
      }))
      description = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.fusion_apps_fusion_environments : (
        v.rules == null || alltrue([for item in v.rules : (length(item.conditions) >= 1)])
      )
    ])
    error_message = "Each conditions list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.fusion_apps_fusion_environments : (
        v.rules == null || alltrue([for item in v.rules : (contains([for v in ["ALLOW"] : lower(v)], lower(item.action)))])
      )
    ])
    error_message = "must be one of: \"ALLOW\""
  }
  validation {
    condition = alltrue([
      for k, v in var.fusion_apps_fusion_environments : (
        v.rules == null || alltrue([for item in v.rules : (alltrue([for item in item.conditions : (contains([for v in ["SOURCE_IP_ADDRESS", "SOURCE_VCN_ID", "SOURCE_VCN_IP_ADDRESS"] : lower(v)], lower(item.attribute_name)))]))])
      )
    ])
    error_message = "must be one of: \"SOURCE_IP_ADDRESS\", \"SOURCE_VCN_ID\", \"SOURCE_VCN_IP_ADDRESS\""
  }
}

