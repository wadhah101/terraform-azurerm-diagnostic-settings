variable "name" {
  type        = string
  default     = "default"
  description = "The name of the diagnostic setting."
}

variable "resource_ids" {
  type        = list(string)
  description = "The IDs of the resources list. The resources must be the same type."
}

variable "log_categories" {
  type = list(object({
    category = string
    enabled  = bool
    retention_policy = object({
      enabled = bool
    })
  }))
  default     = null
  description = "List of log categories."
}

variable "metric_categories" {
  type = list(object({
    category = string
    retention_policy = object({
      enabled = bool
    })
  }))
  default     = null
  description = "List of metric categories."
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Either `true` to enable diagnostic settings or `false` to disable it."
}

variable "retention_days" {
  type        = number
  default     = null
  description = "The number of days to keep diagnostic logs."
}

variable "storage_account_id" {
  type        = string
  default     = null
  description = "The ID of the storage account to send diagnostic logs to."
}

variable "log_analytics_workspace_id" {
  type        = string
  default     = null
  description = "The ID of the Log Analytics workspace to send diagnostic logs to."
}

variable "eventhub_authorization_rule_id" {
  type        = string
  default     = null
  description = "The ID of the event hub authorization rule to send diagnostic logs to."
}