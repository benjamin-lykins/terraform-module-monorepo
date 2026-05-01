resource "random_pet" "this" {
  length    = var.length
  separator = var.separator
  prefix    = var.prefix
}