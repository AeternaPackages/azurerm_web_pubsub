# --- azurerm_web_pubsub ---
output "web_pubsubs" {
  description = "All web_pubsub resources"
  value       = module.web_pubsubs.web_pubsubs
  sensitive   = true
}
output "web_pubsubs_aad_auth_enabled" {
  description = "List of aad_auth_enabled values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.aad_auth_enabled]
}
output "web_pubsubs_capacity" {
  description = "List of capacity values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.capacity]
}
output "web_pubsubs_external_ip" {
  description = "List of external_ip values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.external_ip]
}
output "web_pubsubs_hostname" {
  description = "List of hostname values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.hostname]
}
output "web_pubsubs_identity" {
  description = "List of identity values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.identity]
}
output "web_pubsubs_live_trace" {
  description = "List of live_trace values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.live_trace]
}
output "web_pubsubs_local_auth_enabled" {
  description = "List of local_auth_enabled values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.local_auth_enabled]
}
output "web_pubsubs_location" {
  description = "List of location values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.location]
}
output "web_pubsubs_name" {
  description = "List of name values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.name]
}
output "web_pubsubs_primary_access_key" {
  description = "List of primary_access_key values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.primary_access_key]
  sensitive   = true
}
output "web_pubsubs_primary_connection_string" {
  description = "List of primary_connection_string values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.primary_connection_string]
  sensitive   = true
}
output "web_pubsubs_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.public_network_access_enabled]
}
output "web_pubsubs_public_port" {
  description = "List of public_port values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.public_port]
}
output "web_pubsubs_resource_group_name" {
  description = "List of resource_group_name values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.resource_group_name]
}
output "web_pubsubs_secondary_access_key" {
  description = "List of secondary_access_key values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.secondary_access_key]
  sensitive   = true
}
output "web_pubsubs_secondary_connection_string" {
  description = "List of secondary_connection_string values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.secondary_connection_string]
  sensitive   = true
}
output "web_pubsubs_server_port" {
  description = "List of server_port values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.server_port]
}
output "web_pubsubs_sku" {
  description = "List of sku values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.sku]
}
output "web_pubsubs_tags" {
  description = "List of tags values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.tags]
}
output "web_pubsubs_tls_client_cert_enabled" {
  description = "List of tls_client_cert_enabled values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.tls_client_cert_enabled]
}
output "web_pubsubs_version" {
  description = "List of version values across all web_pubsubs"
  value       = [for k, v in module.web_pubsubs.web_pubsubs : v.version]
}


# --- azurerm_web_pubsub_custom_certificate ---
output "web_pubsub_custom_certificates" {
  description = "All web_pubsub_custom_certificate resources"
  value       = module.web_pubsub_custom_certificates.web_pubsub_custom_certificates
}
output "web_pubsub_custom_certificates_certificate_version" {
  description = "List of certificate_version values across all web_pubsub_custom_certificates"
  value       = [for k, v in module.web_pubsub_custom_certificates.web_pubsub_custom_certificates : v.certificate_version]
}
output "web_pubsub_custom_certificates_custom_certificate_id" {
  description = "List of custom_certificate_id values across all web_pubsub_custom_certificates"
  value       = [for k, v in module.web_pubsub_custom_certificates.web_pubsub_custom_certificates : v.custom_certificate_id]
}
output "web_pubsub_custom_certificates_name" {
  description = "List of name values across all web_pubsub_custom_certificates"
  value       = [for k, v in module.web_pubsub_custom_certificates.web_pubsub_custom_certificates : v.name]
}
output "web_pubsub_custom_certificates_web_pubsub_id" {
  description = "List of web_pubsub_id values across all web_pubsub_custom_certificates"
  value       = [for k, v in module.web_pubsub_custom_certificates.web_pubsub_custom_certificates : v.web_pubsub_id]
}


# --- azurerm_web_pubsub_custom_domain ---
output "web_pubsub_custom_domains" {
  description = "All web_pubsub_custom_domain resources"
  value       = module.web_pubsub_custom_domains.web_pubsub_custom_domains
}
output "web_pubsub_custom_domains_domain_name" {
  description = "List of domain_name values across all web_pubsub_custom_domains"
  value       = [for k, v in module.web_pubsub_custom_domains.web_pubsub_custom_domains : v.domain_name]
}
output "web_pubsub_custom_domains_name" {
  description = "List of name values across all web_pubsub_custom_domains"
  value       = [for k, v in module.web_pubsub_custom_domains.web_pubsub_custom_domains : v.name]
}
output "web_pubsub_custom_domains_web_pubsub_custom_certificate_id" {
  description = "List of web_pubsub_custom_certificate_id values across all web_pubsub_custom_domains"
  value       = [for k, v in module.web_pubsub_custom_domains.web_pubsub_custom_domains : v.web_pubsub_custom_certificate_id]
}
output "web_pubsub_custom_domains_web_pubsub_id" {
  description = "List of web_pubsub_id values across all web_pubsub_custom_domains"
  value       = [for k, v in module.web_pubsub_custom_domains.web_pubsub_custom_domains : v.web_pubsub_id]
}


# --- azurerm_web_pubsub_hub ---
output "web_pubsub_hubs" {
  description = "All web_pubsub_hub resources"
  value       = module.web_pubsub_hubs.web_pubsub_hubs
}
output "web_pubsub_hubs_anonymous_connections_enabled" {
  description = "List of anonymous_connections_enabled values across all web_pubsub_hubs"
  value       = [for k, v in module.web_pubsub_hubs.web_pubsub_hubs : v.anonymous_connections_enabled]
}
output "web_pubsub_hubs_event_handler" {
  description = "List of event_handler values across all web_pubsub_hubs"
  value       = [for k, v in module.web_pubsub_hubs.web_pubsub_hubs : v.event_handler]
}
output "web_pubsub_hubs_event_listener" {
  description = "List of event_listener values across all web_pubsub_hubs"
  value       = [for k, v in module.web_pubsub_hubs.web_pubsub_hubs : v.event_listener]
}
output "web_pubsub_hubs_name" {
  description = "List of name values across all web_pubsub_hubs"
  value       = [for k, v in module.web_pubsub_hubs.web_pubsub_hubs : v.name]
}
output "web_pubsub_hubs_web_pubsub_id" {
  description = "List of web_pubsub_id values across all web_pubsub_hubs"
  value       = [for k, v in module.web_pubsub_hubs.web_pubsub_hubs : v.web_pubsub_id]
}


# --- azurerm_web_pubsub_network_acl ---
output "web_pubsub_network_acls" {
  description = "All web_pubsub_network_acl resources"
  value       = module.web_pubsub_network_acls.web_pubsub_network_acls
}
output "web_pubsub_network_acls_default_action" {
  description = "List of default_action values across all web_pubsub_network_acls"
  value       = [for k, v in module.web_pubsub_network_acls.web_pubsub_network_acls : v.default_action]
}
output "web_pubsub_network_acls_private_endpoint" {
  description = "List of private_endpoint values across all web_pubsub_network_acls"
  value       = [for k, v in module.web_pubsub_network_acls.web_pubsub_network_acls : v.private_endpoint]
}
output "web_pubsub_network_acls_public_network" {
  description = "List of public_network values across all web_pubsub_network_acls"
  value       = [for k, v in module.web_pubsub_network_acls.web_pubsub_network_acls : v.public_network]
}
output "web_pubsub_network_acls_web_pubsub_id" {
  description = "List of web_pubsub_id values across all web_pubsub_network_acls"
  value       = [for k, v in module.web_pubsub_network_acls.web_pubsub_network_acls : v.web_pubsub_id]
}


# --- azurerm_web_pubsub_shared_private_link_resource ---
output "web_pubsub_shared_private_link_resources" {
  description = "All web_pubsub_shared_private_link_resource resources"
  value       = module.web_pubsub_shared_private_link_resources.web_pubsub_shared_private_link_resources
}
output "web_pubsub_shared_private_link_resources_name" {
  description = "List of name values across all web_pubsub_shared_private_link_resources"
  value       = [for k, v in module.web_pubsub_shared_private_link_resources.web_pubsub_shared_private_link_resources : v.name]
}
output "web_pubsub_shared_private_link_resources_request_message" {
  description = "List of request_message values across all web_pubsub_shared_private_link_resources"
  value       = [for k, v in module.web_pubsub_shared_private_link_resources.web_pubsub_shared_private_link_resources : v.request_message]
}
output "web_pubsub_shared_private_link_resources_status" {
  description = "List of status values across all web_pubsub_shared_private_link_resources"
  value       = [for k, v in module.web_pubsub_shared_private_link_resources.web_pubsub_shared_private_link_resources : v.status]
}
output "web_pubsub_shared_private_link_resources_subresource_name" {
  description = "List of subresource_name values across all web_pubsub_shared_private_link_resources"
  value       = [for k, v in module.web_pubsub_shared_private_link_resources.web_pubsub_shared_private_link_resources : v.subresource_name]
}
output "web_pubsub_shared_private_link_resources_target_resource_id" {
  description = "List of target_resource_id values across all web_pubsub_shared_private_link_resources"
  value       = [for k, v in module.web_pubsub_shared_private_link_resources.web_pubsub_shared_private_link_resources : v.target_resource_id]
}
output "web_pubsub_shared_private_link_resources_web_pubsub_id" {
  description = "List of web_pubsub_id values across all web_pubsub_shared_private_link_resources"
  value       = [for k, v in module.web_pubsub_shared_private_link_resources.web_pubsub_shared_private_link_resources : v.web_pubsub_id]
}



