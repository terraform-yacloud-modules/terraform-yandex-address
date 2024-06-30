variable "ip_address_name" {
  type = string
}

variable "zone_name" {
  type        = string
  description = "Zone name"
}

variable "deletion_protection" {
  type = string
}

variable "ddos_protection_provider" {
  type = string
}

variable "outgoing_smtp_capability" {
  type = string
}
