data "yandex_client_config" "client" {}

resource "yandex_vpc_address" "address" {
  name        = var.name
  description = var.description
  labels      = var.labels
  folder_id   = var.folder_id == null ? data.yandex_client_config.client.folder_id : var.folder_id

  deletion_protection  = var.deletion_protection


  external_ipv4_address {
    zone_id                  = var.zone_id
    ddos_protection_provider = var.ddos_protection_provider
    outgoing_smtp_capability = var.outgoing_smtp_capability
  }

  dynamic "dns_record" {
    for_each = var.dns_record != null ? [var.dns_record] : []
    content {
      fqdn        = dns_record.value.fqdn
      dns_zone_id = dns_record.value.dns_zone_id
      ttl         = dns_record.value.ttl
      ptr         = dns_record.value.ptr
    }
  }
}
