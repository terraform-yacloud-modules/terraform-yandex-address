data "yandex_vpc_network" "default" {
  name = "default"
}

module "dns_zone" {

  source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-dns.git//modules/zone?ref=v1.0.0"

  name        = "my-private-zone"
  description = "desc"

  labels = {
    label1 = "label-1-value"
  }

  zone             = "dns-zone.org.ru."
  is_public        = true
  private_networks = [data.yandex_vpc_network.default.id] # можете заменить на ваш network_id
}

module "address" {
  source = "../"

  name        = "test-pip"
  description = "Example address description"
  labels = {
    environment = "production"
  }
  zone_id = "ru-central1-a"
  dns_record = {
    fqdn        = "test"
    dns_zone_id = module.dns_zone.id
    ttl         = 300
    ptr         = true
  }
}
