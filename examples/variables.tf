variable "folder_id" {
  description = "ID каталога Yandex Cloud, в котором создаётся адрес. Имеет приоритет над YC_FOLDER_ID."
  type        = string
  default     = null
}
