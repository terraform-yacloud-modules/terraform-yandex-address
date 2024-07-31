output "id" {
  description = "ID of the allocated address"
  value       = module.address.id
}

output "name" {
  description = "Name of the allocated address"
  value       = module.address.name
}

output "description" {
  description = "Description of the allocated address"
  value       = module.address.description
}

output "folder_id" {
  description = "Folder ID of the allocated address"
  value       = module.address.folder_id
}

output "labels" {
  description = "Labels of the allocated address"
  value       = module.address.labels
}

output "deletion_protection" {
  description = "Deletion protection flag of the allocated address"
  value       = module.address.deletion_protection
}

output "external_ipv4_address" {
  description = "Yandex VPC address"
  value       = module.address.external_ipv4_address
}

output "external_ipv4" {
  description = "External IPv4 address details"
  value       = module.address.external_ipv4_address
}

output "dns_record" {
  description = "DNS record details of the allocated address"
  value       = module.address.dns_record
}

output "created_at" {
  description = "Creation timestamp of the allocated address"
  value       = module.address.created_at
}

output "reserved" {
  description = "Indicates if the address is reserved"
  value       = module.address.reserved
}

output "used" {
  description = "Indicates if the address is used"
  value       = module.address.used
}
