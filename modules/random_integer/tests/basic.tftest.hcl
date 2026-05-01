variables {
  min  = 10
  max  = 20
  seed = "ci-seed"
}

run "creates_integer_in_range" {
  command = apply

  assert {
    condition     = output.value >= 10 && output.value <= 20
    error_message = "Expected generated value to be within [10, 20]."
  }
}