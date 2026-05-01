variable "length" {
  description = "Length of the generated password."
  type        = number
  default     = 20
}

variable "lower" {
  description = "Include lowercase characters."
  type        = bool
  default     = true
}

variable "upper" {
  description = "Include uppercase characters."
  type        = bool
  default     = true
}

variable "numeric" {
  description = "Include numeric characters."
  type        = bool
  default     = true
}

variable "special" {
  description = "Include special characters."
  type        = bool
  default     = true
}

variable "min_lower" {
  description = "Minimum number of lowercase characters."
  type        = number
  default     = 1
}

variable "min_upper" {
  description = "Minimum number of uppercase characters."
  type        = number
  default     = 1
}

variable "min_numeric" {
  description = "Minimum number of numeric characters."
  type        = number
  default     = 1
}

variable "min_special" {
  description = "Minimum number of special characters."
  type        = number
  default     = 1
}

variable "override_special" {
  description = "Custom set of special characters to use."
  type        = string
  default     = null
}