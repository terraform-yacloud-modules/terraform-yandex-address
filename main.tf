resource "yandex_vpc_address" "addr" {
  name = "<имя_IP-адреса>"
  deletion_protection = "<защита_от_удаления>"
  external_ipv4_address {
    zone_id = "<зона_доступности>"
  }
}
