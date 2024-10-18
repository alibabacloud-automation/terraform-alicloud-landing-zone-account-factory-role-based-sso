output "role_name" {
  value       = alicloud_ram_role.ram_role.id
  description = "The name of RAM role."
}

output "role_arn" {
  value       = alicloud_ram_role.ram_role.arn
  description = "The ARN of RAM role."
}
