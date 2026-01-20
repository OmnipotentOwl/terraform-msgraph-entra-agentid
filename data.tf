data "azuread_client_config" "current" {}
data "azuread_application_published_app_ids" "well_known" {}

data "azuread_group" "application_owners" {
  for_each = {
    for key, owner in var.application_owners : key => owner
    if owner.group_display_name != null
  }

  display_name     = each.value.group_display_name
  security_enabled = each.value.is_group_security_enabled
  mail_enabled     = each.value.is_group_mail_enabled
}