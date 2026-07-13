variable "web_pubsubs" {
  description = <<EOT
Map of web_pubsubs, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku
Optional:
    - aad_auth_enabled
    - capacity
    - local_auth_enabled
    - public_network_access_enabled
    - tags
    - tls_client_cert_enabled
    - identity (block)
    - live_trace (block)
Nested web_pubsub_custom_certificates (azurerm_web_pubsub_custom_certificate):
    Required:
        - custom_certificate_id
        - name
Nested web_pubsub_custom_domains (azurerm_web_pubsub_custom_domain):
    Required:
        - domain_name
        - name
        - web_pubsub_custom_certificate_id
Nested web_pubsub_hubs (azurerm_web_pubsub_hub):
    Required:
        - name
    Optional:
        - anonymous_connections_enabled
        - event_handler (block)
        - event_listener (block)
Nested web_pubsub_network_acls (azurerm_web_pubsub_network_acl):
    Required:
        - public_network (block)
    Optional:
        - default_action
        - private_endpoint (block)
Nested web_pubsub_shared_private_link_resources (azurerm_web_pubsub_shared_private_link_resource):
    Required:
        - name
        - subresource_name
        - target_resource_id
    Optional:
        - request_message
EOT

  type = map(object({
    location                      = string
    name                          = string
    resource_group_name           = string
    sku                           = string
    aad_auth_enabled              = optional(bool)
    capacity                      = optional(number)
    local_auth_enabled            = optional(bool)
    public_network_access_enabled = optional(bool)
    tags                          = optional(map(string))
    tls_client_cert_enabled       = optional(bool)
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    live_trace = optional(object({
      connectivity_logs_enabled = optional(bool)
      enabled                   = optional(bool)
      http_request_logs_enabled = optional(bool)
      messaging_logs_enabled    = optional(bool)
    }))
    web_pubsub_custom_certificates = optional(map(object({
      custom_certificate_id = string
      name                  = string
    })))
    web_pubsub_custom_domains = optional(map(object({
      domain_name                      = string
      name                             = string
      web_pubsub_custom_certificate_id = string
    })))
    web_pubsub_hubs = optional(map(object({
      name                          = string
      anonymous_connections_enabled = optional(bool)
      event_handler = optional(list(object({
        auth = optional(object({
          managed_identity_id = string
        }))
        system_events      = optional(set(string))
        url_template       = string
        user_event_pattern = optional(string)
      })))
      event_listener = optional(list(object({
        eventhub_name            = string
        eventhub_namespace_name  = string
        system_event_name_filter = optional(list(string))
        user_event_name_filter   = optional(list(string))
      })))
    })))
    web_pubsub_network_acls = optional(map(object({
      default_action = optional(string)
      public_network = object({
        allowed_request_types = optional(set(string))
        denied_request_types  = optional(set(string))
      })
      private_endpoint = optional(list(object({
        allowed_request_types = optional(set(string))
        denied_request_types  = optional(set(string))
        id                    = string
      })))
    })))
    web_pubsub_shared_private_link_resources = optional(map(object({
      name               = string
      subresource_name   = string
      target_resource_id = string
      request_message    = optional(string)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.web_pubsubs) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.web_pubsubs : [for kk in keys(coalesce(v0.web_pubsub_custom_certificates, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.web_pubsubs : [for kk in keys(coalesce(v0.web_pubsub_custom_domains, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.web_pubsubs : [for kk in keys(coalesce(v0.web_pubsub_hubs, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.web_pubsubs : [for kk in keys(coalesce(v0.web_pubsub_network_acls, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.web_pubsubs : [for kk in keys(coalesce(v0.web_pubsub_shared_private_link_resources, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
