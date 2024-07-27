module "dns-zone" {

  source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-dns.git//modules/zone"

  name        = "my-private-zone"
  description = "desc"

  labels = {
    label1 = "label-1-value"
  }

  zone             = "dns-zone."
  is_public        = true
  private_networks = ["xxxxx"] # network_id
}

module "address" {
  source = "../"

  name        = "test-pip"
  description = "Example address description"
  labels      = {
    environment = "production"
  }
  zone_id = "ru-central1-a"
  dns_record = {
    fqdn        = "test"
    dns_zone_id = module.dns-zone.id
    ttl         = 300
    ptr         = true
  }
}
