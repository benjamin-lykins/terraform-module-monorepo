resource "random_integer" "this" {
  min  = var.min
  max  = var.max
  seed = var.seed
}