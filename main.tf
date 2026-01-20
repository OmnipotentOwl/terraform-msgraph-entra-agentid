resource "msgraph_resource" "agent_identity_blueprint" {
  url         = "applications/microsoft.graph.agentIdentityBlueprint"
  api_version = "beta"
  body = {
    "displayName" : var.app_display_name,
    "description" : var.app_description,
    "signInAudience" : var.sign_in_audience,
    "info" : {
      "marketingUrl" : var.marketing_url,
      "privacyStatementUrl" : var.privacy_statement_url,
      "supportUrl" : var.support_url,
      "termsOfServiceUrl" : var.terms_of_service_url
    }
    "web" : {
      "implicitGrantSettings" : {
        "enableIdTokenIssuance" : var.implicit_id_token_issuance_enabled,
        "enableAccessTokenIssuance" : var.implicit_access_token_issuance_enabled
      },
      "homePageUrl" : var.homepage_url,
      "logoutUrl" : var.logout_url
    }
  }
  response_export_values = {
    "all"       = "@",
    "object_id" = "id",
    "client_id" = "appId",
  }
}

resource "msgraph_resource" "agent_identity_blueprint_principal" {
  url         = "servicePrincipals/microsoft.graph.agentIdentityBlueprintPrincipal"
  api_version = "beta"
  body = {
    "appId" = msgraph_resource.agent_identity_blueprint.output.client_id
  }
  response_export_values = {
    "all"       = "@",
    "object_id" = "id",
    "client_id" = "appId",
  }
}