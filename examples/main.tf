data "yandex_client_config" "client" {}

provider "yandex" {
}

module "network" {
  source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-vpc.git?ref=v1.0.0"

  folder_id = coalesce(var.folder_id, data.yandex_client_config.client.folder_id)

  blank_name = "vpc-address"
  labels = {
    repo = "terraform-yacloud-modules/terraform-yandex-vpc"
  }

  azs = ["ru-central1-a", "ru-central1-b", "ru-central1-d"]

  private_subnets = [["10.10.0.0/24"], ["10.11.0.0/24"], ["10.12.0.0/24"]]
}

module "dns_zone" {

  source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-dns.git//modules/zone?ref=v1.0.0"

  folder_id = coalesce(var.folder_id, data.yandex_client_config.client.folder_id)

  name        = "my-public-zone"
  description = "desc"

  labels = {
    label1 = "label-1-value"
  }

  zone      = "dns-zone-${coalesce(var.folder_id, data.yandex_client_config.client.folder_id)}.org.ru."
  is_public = true
}

module "address" {
  source = "../"

  folder_id = coalesce(var.folder_id, data.yandex_client_config.client.folder_id)

  name                = "test-address"
  description         = "Example address description"
  deletion_protection = "false"
  labels = {
    environment = "production"
  }
  zone_id                  = "ru-central1-a"
  ddos_protection_provider = null
  dns_record = {
    fqdn        = "test"
    dns_zone_id = module.dns_zone.id
    ttl         = 300
    ptr         = true
  }

  timeouts = {
    create = "40m"
    update = "40m"
    delete = "40m"
  }

}

module "internal_address" {
  source = "../"

  folder_id = coalesce(var.folder_id, data.yandex_client_config.client.folder_id)

  name        = "test-internal-address"
  description = "Example internal address description"
  labels = {
    environment = "production"
  }

  internal_ipv4_address = {
    subnet_id = module.network.private_subnets_ids[0]
    address   = "10.10.0.100"
  }
}
