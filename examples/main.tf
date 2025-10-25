data "yandex_client_config" "client" {}

module "network" {
  source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-vpc.git?ref=v1.0.0"

  folder_id = data.yandex_client_config.client.folder_id

  blank_name = "vpc-address"
  labels = {
    repo = "terraform-yacloud-modules/terraform-yandex-vpc"
  }

  azs = ["ru-central1-a", "ru-central1-b", "ru-central1-d"]

  private_subnets = [["10.10.0.0/24"], ["10.11.0.0/24"], ["10.12.0.0/24"]]
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
  private_networks = [module.network.vpc_id]
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
