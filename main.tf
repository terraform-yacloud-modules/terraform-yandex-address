resource "yandex_vpc_address" "addr" {
  name = var.ip_address_name
  deletion_protection  = var.deletion_protection == null ? null : var.deletion_protection
  external_ipv4_address {
    zone_id = var.zone_name
  }
}
