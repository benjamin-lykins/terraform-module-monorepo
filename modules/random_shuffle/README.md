# random_shuffle

Terraform module that shuffles an input list and returns a configurable number of items.

## Usage

```hcl
module "shuffle" {
  source = "./modules/random_shuffle"

  input_list   = ["alpha", "beta", "gamma", "delta"]
  result_count = 3
  seed         = "example-seed"
}
```

## Inputs

| Name | Type | Default | Description |
| --- | --- | --- | --- |
| `input_list` | `list(string)` | n/a | Input values that can appear in the shuffled result. |
| `result_count` | `number` | `2` | Number of shuffled items to return. |
| `seed` | `string` | `null` | Optional seed used to reproduce shuffles. |

## Outputs

| Name | Description |
| --- | --- |
| `result` | Shuffled list result. |

## Test

```bash
terraform -chdir=modules/random_shuffle init -input=false
terraform -chdir=modules/random_shuffle test
```
