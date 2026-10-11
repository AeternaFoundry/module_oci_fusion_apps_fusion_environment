output "fusion_apps_fusion_environments_id" {
  description = "Map of id values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no id are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fusion_apps_fusion_environments_additional_egress_rules" {
  description = "Map of additional_egress_rules values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no additional_egress_rules are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.additional_egress_rules if v.additional_egress_rules != null && length(v.additional_egress_rules) > 0 }
}
output "fusion_apps_fusion_environments_additional_language_packs" {
  description = "Map of additional_language_packs values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no additional_language_packs are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.additional_language_packs if v.additional_language_packs != null && length(v.additional_language_packs) > 0 }
}
output "fusion_apps_fusion_environments_applied_patch_bundles" {
  description = "Map of applied_patch_bundles values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no applied_patch_bundles are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.applied_patch_bundles if v.applied_patch_bundles != null && length(v.applied_patch_bundles) > 0 }
}
output "fusion_apps_fusion_environments_compartment_id" {
  description = "Map of compartment_id values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no compartment_id are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "fusion_apps_fusion_environments_create_fusion_environment_admin_user_details" {
  description = "Map of create_fusion_environment_admin_user_details values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no create_fusion_environment_admin_user_details are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => one(v.create_fusion_environment_admin_user_details) if v.create_fusion_environment_admin_user_details != null && length(v.create_fusion_environment_admin_user_details) > 0 }
}
output "fusion_apps_fusion_environments_defined_tags" {
  description = "Map of defined_tags values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no defined_tags are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "fusion_apps_fusion_environments_display_name" {
  description = "Map of display_name values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no display_name are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "fusion_apps_fusion_environments_dns_prefix" {
  description = "Map of dns_prefix values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no dns_prefix are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.dns_prefix if v.dns_prefix != null && length(v.dns_prefix) > 0 }
}
output "fusion_apps_fusion_environments_domain_id" {
  description = "Map of domain_id values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no domain_id are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.domain_id if v.domain_id != null && length(v.domain_id) > 0 }
}
output "fusion_apps_fusion_environments_freeform_tags" {
  description = "Map of freeform_tags values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "fusion_apps_fusion_environments_fusion_environment_family_id" {
  description = "Map of fusion_environment_family_id values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no fusion_environment_family_id are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.fusion_environment_family_id if v.fusion_environment_family_id != null && length(v.fusion_environment_family_id) > 0 }
}
output "fusion_apps_fusion_environments_fusion_environment_type" {
  description = "Map of fusion_environment_type values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no fusion_environment_type are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.fusion_environment_type if v.fusion_environment_type != null && length(v.fusion_environment_type) > 0 }
}
output "fusion_apps_fusion_environments_idcs_domain_url" {
  description = "Map of idcs_domain_url values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no idcs_domain_url are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.idcs_domain_url if v.idcs_domain_url != null && length(v.idcs_domain_url) > 0 }
}
output "fusion_apps_fusion_environments_is_break_glass_enabled" {
  description = "Map of is_break_glass_enabled values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no is_break_glass_enabled are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.is_break_glass_enabled if v.is_break_glass_enabled != null }
}
output "fusion_apps_fusion_environments_is_ipv6dual_stack_enabled" {
  description = "Map of is_ipv6dual_stack_enabled values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no is_ipv6dual_stack_enabled are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.is_ipv6dual_stack_enabled if v.is_ipv6dual_stack_enabled != null }
}
output "fusion_apps_fusion_environments_kms_key_id" {
  description = "Map of kms_key_id values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no kms_key_id are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "fusion_apps_fusion_environments_kms_key_info" {
  description = "Map of kms_key_info values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no kms_key_info are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.kms_key_info if v.kms_key_info != null && length(v.kms_key_info) > 0 }
}
output "fusion_apps_fusion_environments_lifecycle_details" {
  description = "Map of lifecycle_details values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "fusion_apps_fusion_environments_lockbox_id" {
  description = "Map of lockbox_id values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no lockbox_id are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.lockbox_id if v.lockbox_id != null && length(v.lockbox_id) > 0 }
}
output "fusion_apps_fusion_environments_maintenance_policy" {
  description = "Map of maintenance_policy values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no maintenance_policy are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => one(v.maintenance_policy) if v.maintenance_policy != null && length(v.maintenance_policy) > 0 }
}
output "fusion_apps_fusion_environments_public_url" {
  description = "Map of public_url values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no public_url are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.public_url if v.public_url != null && length(v.public_url) > 0 }
}
output "fusion_apps_fusion_environments_refresh" {
  description = "Map of refresh values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no refresh are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.refresh if v.refresh != null && length(v.refresh) > 0 }
}
output "fusion_apps_fusion_environments_rules" {
  description = "Map of rules values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no rules are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "fusion_apps_fusion_environments_state" {
  description = "Map of state values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no state are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.state if v.state != null && length(v.state) > 0 }
}
output "fusion_apps_fusion_environments_subscription_ids" {
  description = "Map of subscription_ids values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no subscription_ids are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.subscription_ids if v.subscription_ids != null && length(v.subscription_ids) > 0 }
}
output "fusion_apps_fusion_environments_system_name" {
  description = "Map of system_name values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no system_name are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.system_name if v.system_name != null && length(v.system_name) > 0 }
}
output "fusion_apps_fusion_environments_time_created" {
  description = "Map of time_created values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no time_created are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "fusion_apps_fusion_environments_time_upcoming_maintenance" {
  description = "Map of time_upcoming_maintenance values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no time_upcoming_maintenance are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.time_upcoming_maintenance if v.time_upcoming_maintenance != null && length(v.time_upcoming_maintenance) > 0 }
}
output "fusion_apps_fusion_environments_time_updated" {
  description = "Map of time_updated values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no time_updated are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "fusion_apps_fusion_environments_version" {
  description = "Map of version values across all fusion_apps_fusion_environments, keyed the same as var.fusion_apps_fusion_environments except keys with no version are omitted"
  value       = { for k, v in oci_fusion_apps_fusion_environment.fusion_apps_fusion_environments : k => v.version if v.version != null && length(v.version) > 0 }
}

