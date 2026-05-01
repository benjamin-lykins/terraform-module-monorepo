variable "min" {
  description = "Minimum integer value."
  type        = number
}

variable "max" {
  description = "Maximum integer value."
  type        = number
}

variable "seed" {
  description = "Optional seed used to reproduce values."
  type        = string
  default     = null
}