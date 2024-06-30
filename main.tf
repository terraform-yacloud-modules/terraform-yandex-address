data "yandex_client_config" "client" {}

resource "yandex_vpc_address" "addr" {
  name = var.ip_address_name
  folder_id = var.folder_id == null ? data.yandex_client_config.client.folder_id : var.folder_id
  deletion_protection  = var.deletion_protection == null ? null : var.deletion_protection
  external_ipv4_address {
    zone_id = var.zone
    ddos_protection_provider  = var.ddos_protection_provider == null ? null : var.ddos_protection_provider
    outgoing_smtp_capability  = var.outgoing_smtp_capability == null ? null : var.outgoing_smtp_capability
  }
}
