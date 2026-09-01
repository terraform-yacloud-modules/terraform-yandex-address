module "wrapper" {
  source = "../"

  for_each = var.items

  name                     = try(each.value.name, var.defaults.name, null)
  description              = try(each.value.description, var.defaults.description, null)
  deletion_protection      = try(each.value.deletion_protection, var.defaults.deletion_protection, null)
  labels                   = try(each.value.labels, var.defaults.labels, {})
  zone_id                  = try(each.value.zone_id, var.defaults.zone_id, null)
  ddos_protection_provider = try(each.value.ddos_protection_provider, var.defaults.ddos_protection_provider, null)
  outgoing_smtp_capability = try(each.value.outgoing_smtp_capability, var.defaults.outgoing_smtp_capability, null)
  dns_record               = try(each.value.dns_record, var.defaults.dns_record, null)
}
