variable "name" {
  description = "Name of the address"
  type        = string
}

variable "description" {
  description = "An optional description of this resource"
  type        = string
  default     = null
}

variable "deletion_protection" {
  description = "Flag to enable deletion protection for the resource"
  type        = string
  default     = null
}

variable "labels" {
  description = "Labels to apply to this resource"
  type        = map(string)
  default     = {}
}

variable "zone_id" {
  description = "Zone for allocating address"
  type        = string
  default     = null
}

variable "ddos_protection_provider" {
  description = "Enable DDOS protection. Possible values are: 'qrator'"
  type        = string
  default     = null
}

variable "outgoing_smtp_capability" {
  description = "Wanted outgoing smtp capability"
  type        = string
  default     = null
}

variable "dns_record" {
  description = "DNS record specification of address"
  type = object({
    fqdn        = string
    dns_zone_id = string
    ttl         = optional(number)
    ptr         = optional(bool)
  })
  default = null
}
