output "external_ipv4_address" {
  description = "Yandex VPC address"
  value       = yandex_vpc_address.addr.external_ipv4_address[0].address
}