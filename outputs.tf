# --- azurerm_web_pubsub ---
output "web_pubsubs_aad_auth_enabled" {
  description = "Map of aad_auth_enabled values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_aad_auth_enabled
}

output "web_pubsubs_capacity" {
  description = "Map of capacity values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_capacity
}

output "web_pubsubs_external_ip" {
  description = "Map of external_ip values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_external_ip
}

output "web_pubsubs_hostname" {
  description = "Map of hostname values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_hostname
}

output "web_pubsubs_identity" {
  description = "Map of identity values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_identity
}

output "web_pubsubs_live_trace" {
  description = "Map of live_trace values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_live_trace
}

output "web_pubsubs_local_auth_enabled" {
  description = "Map of local_auth_enabled values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_local_auth_enabled
}

output "web_pubsubs_location" {
  description = "Map of location values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_location
}

output "web_pubsubs_name" {
  description = "Map of name values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_name
}

output "web_pubsubs_primary_access_key" {
  description = "Map of primary_access_key values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_primary_access_key
  sensitive   = true
}

output "web_pubsubs_primary_connection_string" {
  description = "Map of primary_connection_string values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_primary_connection_string
  sensitive   = true
}

output "web_pubsubs_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_public_network_access_enabled
}

output "web_pubsubs_public_port" {
  description = "Map of public_port values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_public_port
}

output "web_pubsubs_resource_group_name" {
  description = "Map of resource_group_name values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_resource_group_name
}

output "web_pubsubs_secondary_access_key" {
  description = "Map of secondary_access_key values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_secondary_access_key
  sensitive   = true
}

output "web_pubsubs_secondary_connection_string" {
  description = "Map of secondary_connection_string values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_secondary_connection_string
  sensitive   = true
}

output "web_pubsubs_server_port" {
  description = "Map of server_port values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_server_port
}

output "web_pubsubs_sku" {
  description = "Map of sku values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_sku
}

output "web_pubsubs_tags" {
  description = "Map of tags values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_tags
}

output "web_pubsubs_tls_client_cert_enabled" {
  description = "Map of tls_client_cert_enabled values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_tls_client_cert_enabled
}

output "web_pubsubs_version" {
  description = "Map of version values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = module.web_pubsubs.web_pubsubs_version
}

# --- azurerm_web_pubsub_custom_certificate ---
output "web_pubsub_custom_certificates_certificate_version" {
  description = "Map of certificate_version values across all web_pubsub_custom_certificates, keyed the same as var.web_pubsub_custom_certificates"
  value       = module.web_pubsub_custom_certificates.web_pubsub_custom_certificates_certificate_version
}

output "web_pubsub_custom_certificates_custom_certificate_id" {
  description = "Map of custom_certificate_id values across all web_pubsub_custom_certificates, keyed the same as var.web_pubsub_custom_certificates"
  value       = module.web_pubsub_custom_certificates.web_pubsub_custom_certificates_custom_certificate_id
}

output "web_pubsub_custom_certificates_name" {
  description = "Map of name values across all web_pubsub_custom_certificates, keyed the same as var.web_pubsub_custom_certificates"
  value       = module.web_pubsub_custom_certificates.web_pubsub_custom_certificates_name
}

output "web_pubsub_custom_certificates_web_pubsub_id" {
  description = "Map of web_pubsub_id values across all web_pubsub_custom_certificates, keyed the same as var.web_pubsub_custom_certificates"
  value       = module.web_pubsub_custom_certificates.web_pubsub_custom_certificates_web_pubsub_id
}

# --- azurerm_web_pubsub_custom_domain ---
output "web_pubsub_custom_domains_domain_name" {
  description = "Map of domain_name values across all web_pubsub_custom_domains, keyed the same as var.web_pubsub_custom_domains"
  value       = module.web_pubsub_custom_domains.web_pubsub_custom_domains_domain_name
}

output "web_pubsub_custom_domains_name" {
  description = "Map of name values across all web_pubsub_custom_domains, keyed the same as var.web_pubsub_custom_domains"
  value       = module.web_pubsub_custom_domains.web_pubsub_custom_domains_name
}

output "web_pubsub_custom_domains_web_pubsub_custom_certificate_id" {
  description = "Map of web_pubsub_custom_certificate_id values across all web_pubsub_custom_domains, keyed the same as var.web_pubsub_custom_domains"
  value       = module.web_pubsub_custom_domains.web_pubsub_custom_domains_web_pubsub_custom_certificate_id
}

output "web_pubsub_custom_domains_web_pubsub_id" {
  description = "Map of web_pubsub_id values across all web_pubsub_custom_domains, keyed the same as var.web_pubsub_custom_domains"
  value       = module.web_pubsub_custom_domains.web_pubsub_custom_domains_web_pubsub_id
}

# --- azurerm_web_pubsub_hub ---
output "web_pubsub_hubs_anonymous_connections_enabled" {
  description = "Map of anonymous_connections_enabled values across all web_pubsub_hubs, keyed the same as var.web_pubsub_hubs"
  value       = module.web_pubsub_hubs.web_pubsub_hubs_anonymous_connections_enabled
}

output "web_pubsub_hubs_event_handler" {
  description = "Map of event_handler values across all web_pubsub_hubs, keyed the same as var.web_pubsub_hubs"
  value       = module.web_pubsub_hubs.web_pubsub_hubs_event_handler
}

output "web_pubsub_hubs_event_listener" {
  description = "Map of event_listener values across all web_pubsub_hubs, keyed the same as var.web_pubsub_hubs"
  value       = module.web_pubsub_hubs.web_pubsub_hubs_event_listener
}

output "web_pubsub_hubs_name" {
  description = "Map of name values across all web_pubsub_hubs, keyed the same as var.web_pubsub_hubs"
  value       = module.web_pubsub_hubs.web_pubsub_hubs_name
}

output "web_pubsub_hubs_web_pubsub_id" {
  description = "Map of web_pubsub_id values across all web_pubsub_hubs, keyed the same as var.web_pubsub_hubs"
  value       = module.web_pubsub_hubs.web_pubsub_hubs_web_pubsub_id
}

# --- azurerm_web_pubsub_network_acl ---
output "web_pubsub_network_acls_default_action" {
  description = "Map of default_action values across all web_pubsub_network_acls, keyed the same as var.web_pubsub_network_acls"
  value       = module.web_pubsub_network_acls.web_pubsub_network_acls_default_action
}

output "web_pubsub_network_acls_private_endpoint" {
  description = "Map of private_endpoint values across all web_pubsub_network_acls, keyed the same as var.web_pubsub_network_acls"
  value       = module.web_pubsub_network_acls.web_pubsub_network_acls_private_endpoint
}

output "web_pubsub_network_acls_public_network" {
  description = "Map of public_network values across all web_pubsub_network_acls, keyed the same as var.web_pubsub_network_acls"
  value       = module.web_pubsub_network_acls.web_pubsub_network_acls_public_network
}

output "web_pubsub_network_acls_web_pubsub_id" {
  description = "Map of web_pubsub_id values across all web_pubsub_network_acls, keyed the same as var.web_pubsub_network_acls"
  value       = module.web_pubsub_network_acls.web_pubsub_network_acls_web_pubsub_id
}

# --- azurerm_web_pubsub_shared_private_link_resource ---
output "web_pubsub_shared_private_link_resources_name" {
  description = "Map of name values across all web_pubsub_shared_private_link_resources, keyed the same as var.web_pubsub_shared_private_link_resources"
  value       = module.web_pubsub_shared_private_link_resources.web_pubsub_shared_private_link_resources_name
}

output "web_pubsub_shared_private_link_resources_request_message" {
  description = "Map of request_message values across all web_pubsub_shared_private_link_resources, keyed the same as var.web_pubsub_shared_private_link_resources"
  value       = module.web_pubsub_shared_private_link_resources.web_pubsub_shared_private_link_resources_request_message
}

output "web_pubsub_shared_private_link_resources_status" {
  description = "Map of status values across all web_pubsub_shared_private_link_resources, keyed the same as var.web_pubsub_shared_private_link_resources"
  value       = module.web_pubsub_shared_private_link_resources.web_pubsub_shared_private_link_resources_status
}

output "web_pubsub_shared_private_link_resources_subresource_name" {
  description = "Map of subresource_name values across all web_pubsub_shared_private_link_resources, keyed the same as var.web_pubsub_shared_private_link_resources"
  value       = module.web_pubsub_shared_private_link_resources.web_pubsub_shared_private_link_resources_subresource_name
}

output "web_pubsub_shared_private_link_resources_target_resource_id" {
  description = "Map of target_resource_id values across all web_pubsub_shared_private_link_resources, keyed the same as var.web_pubsub_shared_private_link_resources"
  value       = module.web_pubsub_shared_private_link_resources.web_pubsub_shared_private_link_resources_target_resource_id
}

output "web_pubsub_shared_private_link_resources_web_pubsub_id" {
  description = "Map of web_pubsub_id values across all web_pubsub_shared_private_link_resources, keyed the same as var.web_pubsub_shared_private_link_resources"
  value       = module.web_pubsub_shared_private_link_resources.web_pubsub_shared_private_link_resources_web_pubsub_id
}


