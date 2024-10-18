output "saml_provider_arn" {
  value       = alicloud_ram_saml_provider.idp.arn
  description = "The arn of SAML provider."
}

output "ram_roles_arn" {
  value = [
    for k, role in module.role : role.role_arn
  ]
  description = "The arn of RAM roles."
}
