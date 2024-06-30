variable "ip_address_name" {
  type = string
}

variable "zone" {
  type        = string
  description = "Zone name"
}

variable "folder_id" {
  description = "Folder-ID where need to add permissions. If omitted default FOLDER_ID will be used"
  type        = string
  default     = null
}

variable "deletion_protection" {
  type = string
  default = null
}

variable "ddos_protection_provider" {
  type = string
  default = null
}

variable "outgoing_smtp_capability" {
  type = string
  default = null
}
