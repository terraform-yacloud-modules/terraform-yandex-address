output "id" {
  description = "ID of the allocated address"
  value       = yandex_vpc_address.address.id
}

output "name" {
  description = "Name of the allocated address"
  value       = yandex_vpc_address.address.name
}

output "description" {
  description = "Description of the allocated address"
  value       = yandex_vpc_address.address.description
}

output "folder_id" {
  description = "Folder ID of the allocated address"
  value       = yandex_vpc_address.address.folder_id
}

output "labels" {
  description = "Labels of the allocated address"
  value       = yandex_vpc_address.address.labels
}

output "deletion_protection" {
  description = "Deletion protection flag of the allocated address"
  value       = yandex_vpc_address.address.deletion_protection
}

output "external_ipv4_address" {
  description = "Yandex VPC address"
  value       = yandex_vpc_address.address.external_ipv4_address[0].address
}

output "external_ipv4" {
  description = "External IPv4 address details"
  value       = yandex_vpc_address.address.external_ipv4_address
}

output "dns_record" {
  description = "DNS record details of the allocated address"
  value       = yandex_vpc_address.address.dns_record
}

output "created_at" {
  description = "Creation timestamp of the allocated address"
  value       = yandex_vpc_address.address.created_at
}

output "reserved" {
  description = "Indicates if the address is reserved"
  value       = yandex_vpc_address.address.reserved
}

output "used" {
  description = "Indicates if the address is used"
  value       = yandex_vpc_address.address.used
}
