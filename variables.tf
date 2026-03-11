variable "name" {
  description = "Name of the address"
  type        = string

  validation {
    condition     = length(var.name) > 0 && length(var.name) <= 63
    error_message = "Name must be between 1 and 63 characters long."
  }
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

  validation {
    condition     = var.deletion_protection == null || can(tobool(var.deletion_protection))
    error_message = "Deletion protection must be a boolean value (true, false) or string representation ('true', 'false') or null."
  }
}

variable "labels" {
  description = "Labels to apply to this resource"
  type        = map(string)
  default     = {}

  validation {
    condition = alltrue([
      for key, value in var.labels :
      length(key) <= 63 && can(regex("^[a-z]([-a-z0-9]*[a-z0-9])?$", key))
    ])
    error_message = "Label keys must be 1-63 characters long, start with a lowercase letter, and contain only lowercase letters, numbers, and hyphens."
  }

  validation {
    condition = alltrue([
      for key, value in var.labels :
      length(value) <= 63
    ])
    error_message = "Label values must be 63 characters or less."
  }
}

variable "folder_id" {
  description = "Folder ID where the address should be created. Defaults to provider folder_id."
  type        = string
  default     = null
}

variable "zone_id" {
  description = "Zone for allocating address"
  type        = string
  default     = null

  validation {
    condition     = var.zone_id == null || contains(["ru-central1-a", "ru-central1-b", "ru-central1-d"], var.zone_id)
    error_message = "Zone must be one of: 'ru-central1-a', 'ru-central1-b', 'ru-central1-d'."
  }
}

variable "ddos_protection_provider" {
  description = "Enable DDOS protection. Possible values are: 'qrator'"
  type        = string
  default     = null

  validation {
    condition     = var.ddos_protection_provider == null || var.ddos_protection_provider == "qrator"
    error_message = "DDOS protection provider must be 'qrator' or null."
  }
}

variable "outgoing_smtp_capability" {
  description = "Enables outgoing SMTP capability for the static external IP address. Required for sending emails from applications using this IP address."
  type        = bool
  default     = null
}

variable "timeouts" {
  description = "Provider-side timeouts for create/update/delete operations."
  type = object({
    create = optional(string)
    update = optional(string)
    delete = optional(string)
  })
  default = null
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

  validation {
    condition = var.dns_record == null || (
      length(var.dns_record.fqdn) > 0 &&
      length(var.dns_record.fqdn) <= 253 &&
      length(var.dns_record.dns_zone_id) > 0
    )
    error_message = "DNS record FQDN must be 1-253 characters long and DNS zone ID must not be empty."
  }

  validation {
    condition = var.dns_record == null || (
      var.dns_record.ttl == null || (var.dns_record.ttl >= 60 && var.dns_record.ttl <= 86400)
    )
    error_message = "TTL must be between 60 and 86400 seconds."
  }
}
