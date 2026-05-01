# random_integer

Terraform module that generates a random integer in a configured range.

## Usage

```hcl
module "integer" {
  source = "./modules/random_integer"

  min  = 10
  max  = 20
  seed = "example-seed"
}
```

## Inputs

| Name | Type | Default | Description |
| --- | --- | --- | --- |
| `min` | `number` | n/a | Minimum integer value. |
| `max` | `number` | n/a | Maximum integer value. |
| `seed` | `string` | `null` | Optional seed used to reproduce values. |

## Outputs

| Name | Description |
| --- | --- |
| `value` | Generated integer value. |

## Test

```bash
terraform -chdir=modules/random_integer init -input=false
terraform -chdir=modules/random_integer test
```
