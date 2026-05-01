variable "length" {
  description = "Number of random words in the pet name."
  type        = number
  default     = 2
}

variable "separator" {
  description = "Separator used between words."
  type        = string
  default     = "-"
}

variable "prefix" {
  description = "Optional prefix added before the generated name."
  type        = string
  default     = null
}