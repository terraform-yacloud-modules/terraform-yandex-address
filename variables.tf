variable "name" {
  description = "Name of the address"
  type        = string
}

variable "description" {
  description = "An optional description of the static external IP address resource. Helps identify the purpose of the address."
  type        = string
  default     = null
}

variable "deletion_protection" {
  description = "Flag to enable deletion protection for the resource.When enabled, prevents accidental deletion of the resource."
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
  description = "Enables outgoing SMTP capability for the static external IP address. Required for sending emails from applications using this IP address."
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
