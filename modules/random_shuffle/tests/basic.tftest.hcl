variables {
  input_list   = ["alpha", "beta", "gamma", "delta"]
  result_count = 3
  seed         = "test-seed"
}

run "creates_shuffle_subset" {
  command = apply

  assert {
    condition     = length(output.result) == 3
    error_message = "Expected exactly 3 shuffled values."
  }

  assert {
    condition     = alltrue([for item in output.result : contains(var.input_list, item)])
    error_message = "Expected all shuffled values to come from the input list."
  }
}