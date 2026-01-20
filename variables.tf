variable "app_display_name" {
  type        = string
  description = "The display name of the Agent Identity Blueprint application."
}
variable "app_description" {
  type        = string
  description = "The description of the Agent Identity Blueprint application, as shown to end users."
  default     = null
}
variable "sign_in_audience" {
  type        = string
  description = "The sign in audience of the Agent Identity Blueprint application"
}
variable "implicit_id_token_issuance_enabled" {
  type        = bool
  description = "Whether to enable implicit ID token issuance for the Agent Identity Blueprint application"
  default     = false
}
variable "implicit_access_token_issuance_enabled" {
  type        = bool
  description = "Whether to enable implicit access token issuance for the Agent Identity Blueprint application"
  default     = false
}
variable "homepage_url" {
  type        = string
  description = "Home page or landing page of the Agent Identity Blueprint application."
  default     = null
}
variable "logout_url" {
  type        = string
  description = "The URL that will be used by Microsoft's authorization service to sign out a user using front-channel, back-channel or SAML logout protocols."
  default     = null
}
variable "marketing_url" {
  type        = string
  description = "The URL of the marketing page for the Agent Identity Blueprint application."
  default     = null
}
variable "privacy_statement_url" {
  type        = string
  description = "The URL of the privacy statement for the Agent Identity Blueprint application."
  default     = null
}
variable "support_url" {
  type        = string
  description = "The URL of the support page for the Agent Identity Blueprint application."
  default     = null
}
variable "terms_of_service_url" {
  type        = string
  description = "The URL of the terms of service statement for the Agent Identity Blueprint application."
  default     = null
}

variable "application_owners" {
  type = map(object({
    object_id                 = optional(string, null)
    group_display_name        = optional(string, null)
    is_group_security_enabled = optional(bool, false)
    is_group_mail_enabled     = optional(bool, false)
    user_principal_name       = optional(string, null)
  }))
  description = "The owners of the application registration. Owners are granted limited administrative permissions to the application registration."
  default     = {}
}