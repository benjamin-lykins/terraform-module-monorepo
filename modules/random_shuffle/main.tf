resource "random_shuffle" "this" {
  input        = var.input_list
  result_count = var.result_count
  seed         = var.seed
}