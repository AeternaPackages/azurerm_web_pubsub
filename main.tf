locals {
  web_pubsubs = { for k1, v1 in var.web_pubsubs : k1 => { aad_auth_enabled = v1.aad_auth_enabled, capacity = v1.capacity, identity = v1.identity, live_trace = v1.live_trace, local_auth_enabled = v1.local_auth_enabled, location = v1.location, name = v1.name, public_network_access_enabled = v1.public_network_access_enabled, resource_group_name = v1.resource_group_name, sku = v1.sku, tags = v1.tags, tls_client_cert_enabled = v1.tls_client_cert_enabled } }

  web_pubsub_custom_certificates = merge([
    for k1, v1 in var.web_pubsubs : {
      for k2, v2 in coalesce(v1.web_pubsub_custom_certificates, {}) :
      "${k1}/${k2}" => merge(v2, {
        web_pubsub_id = module.web_pubsubs.web_pubsubs_id["${k1}"]
      })
    }
  ]...)

  web_pubsub_custom_domains = merge([
    for k1, v1 in var.web_pubsubs : {
      for k2, v2 in coalesce(v1.web_pubsub_custom_domains, {}) :
      "${k1}/${k2}" => merge(v2, {
        web_pubsub_id                    = module.web_pubsubs.web_pubsubs_id["${k1}"]
        web_pubsub_custom_certificate_id = try(module.web_pubsub_custom_certificates.web_pubsub_custom_certificates_id["${k1}/${v2.web_pubsub_custom_certificate_id}"], v2.web_pubsub_custom_certificate_id)
      })
    }
  ]...)

  web_pubsub_hubs = merge([
    for k1, v1 in var.web_pubsubs : {
      for k2, v2 in coalesce(v1.web_pubsub_hubs, {}) :
      "${k1}/${k2}" => merge(v2, {
        web_pubsub_id = module.web_pubsubs.web_pubsubs_id["${k1}"]
      })
    }
  ]...)

  web_pubsub_network_acls = merge([
    for k1, v1 in var.web_pubsubs : {
      for k2, v2 in coalesce(v1.web_pubsub_network_acls, {}) :
      "${k1}/${k2}" => merge(v2, {
        web_pubsub_id = module.web_pubsubs.web_pubsubs_id["${k1}"]
      })
    }
  ]...)

  web_pubsub_shared_private_link_resources = merge([
    for k1, v1 in var.web_pubsubs : {
      for k2, v2 in coalesce(v1.web_pubsub_shared_private_link_resources, {}) :
      "${k1}/${k2}" => merge(v2, {
        web_pubsub_id = module.web_pubsubs.web_pubsubs_id["${k1}"]
      })
    }
  ]...)
}

module "web_pubsubs" {
  source      = "git::https://github.com/AeternaModules/azurerm_web_pubsub.git?ref=v4.80.0"
  web_pubsubs = local.web_pubsubs
}

module "web_pubsub_custom_certificates" {
  source                         = "git::https://github.com/AeternaModules/azurerm_web_pubsub_custom_certificate.git?ref=v4.80.0"
  web_pubsub_custom_certificates = local.web_pubsub_custom_certificates
  depends_on                     = [module.web_pubsubs]
}

module "web_pubsub_custom_domains" {
  source                    = "git::https://github.com/AeternaModules/azurerm_web_pubsub_custom_domain.git?ref=v4.80.0"
  web_pubsub_custom_domains = local.web_pubsub_custom_domains
  depends_on                = [module.web_pubsubs, module.web_pubsub_custom_certificates]
}

module "web_pubsub_hubs" {
  source          = "git::https://github.com/AeternaModules/azurerm_web_pubsub_hub.git?ref=v4.80.0"
  web_pubsub_hubs = local.web_pubsub_hubs
  depends_on      = [module.web_pubsubs]
}

module "web_pubsub_network_acls" {
  source                  = "git::https://github.com/AeternaModules/azurerm_web_pubsub_network_acl.git?ref=v4.80.0"
  web_pubsub_network_acls = local.web_pubsub_network_acls
  depends_on              = [module.web_pubsubs]
}

module "web_pubsub_shared_private_link_resources" {
  source                                   = "git::https://github.com/AeternaModules/azurerm_web_pubsub_shared_private_link_resource.git?ref=v4.80.0"
  web_pubsub_shared_private_link_resources = local.web_pubsub_shared_private_link_resources
  depends_on                               = [module.web_pubsubs]
}

