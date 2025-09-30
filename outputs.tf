output "id" {
  description = "The unique identifier of the allocated static external IP address"
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
  description = "The ID of the Yandex Cloud folder where the static external IP address is located."
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
  description = "The actual IPv4 address value of the allocated static external IP address."
  value       = yandex_vpc_address.address.external_ipv4_address[0].address
}

output "external_ipv4" {
  description = "Complete details of the external IPv4 address configuration, including address, zone, and other metadata."
  value       = yandex_vpc_address.address.external_ipv4_address
}

output "dns_record" {
  description = "DNS record configuration details associated with the allocated static external IP address, if configured."
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
