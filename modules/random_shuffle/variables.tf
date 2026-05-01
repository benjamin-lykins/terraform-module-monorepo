variable "input_list" {
  description = "Input values that can appear in the shuffled result."
  type        = list(string)
}

variable "result_count" {
  description = "Number of shuffled items to return."
  type        = number
  default     = 2
}

variable "seed" {
  description = "Optional seed used to reproduce shuffles."
  type        = string
  default     = null
}