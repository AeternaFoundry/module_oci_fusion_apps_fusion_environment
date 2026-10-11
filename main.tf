resource "oci_fusion_apps_fusion_environment" "fusion_apps_fusion_environments" {
  for_each = var.fusion_apps_fusion_environments

  compartment_id               = each.value.compartment_id
  display_name                 = each.value.display_name
  fusion_environment_family_id = each.value.fusion_environment_family_id
  fusion_environment_type      = each.value.fusion_environment_type
  additional_language_packs    = each.value.additional_language_packs
  defined_tags                 = each.value.defined_tags
  dns_prefix                   = each.value.dns_prefix
  freeform_tags                = each.value.freeform_tags
  is_ipv6dual_stack_enabled    = each.value.is_ipv6dual_stack_enabled
  kms_key_id                   = each.value.kms_key_id

  create_fusion_environment_admin_user_details {
    email_address = each.value.create_fusion_environment_admin_user_details.email_address
    first_name    = each.value.create_fusion_environment_admin_user_details.first_name
    last_name     = each.value.create_fusion_environment_admin_user_details.last_name
    username      = each.value.create_fusion_environment_admin_user_details.username
  }

  dynamic "additional_egress_rules" {
    for_each = each.value.additional_egress_rules != null ? each.value.additional_egress_rules : []
    content {
      description          = additional_egress_rules.value.description
      destination_cidr     = additional_egress_rules.value.destination_cidr
      max_destination_port = additional_egress_rules.value.max_destination_port
      min_destination_port = additional_egress_rules.value.min_destination_port
    }
  }

  dynamic "maintenance_policy" {
    for_each = each.value.maintenance_policy != null ? [each.value.maintenance_policy] : []
    content {
      environment_maintenance_override = maintenance_policy.value.environment_maintenance_override
      monthly_patching_override        = maintenance_policy.value.monthly_patching_override
    }
  }

  dynamic "rules" {
    for_each = each.value.rules != null ? each.value.rules : []
    content {
      action = rules.value.action
      dynamic "conditions" {
        for_each = rules.value.conditions
        content {
          attribute_name  = conditions.value.attribute_name
          attribute_value = conditions.value.attribute_value
        }
      }
      description = rules.value.description
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

