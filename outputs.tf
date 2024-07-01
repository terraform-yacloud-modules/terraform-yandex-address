output "address" {
  description = "Yandex VPC address"
  value       = yandex_vpc_address.addr.external_ipv4_address
}
