# random_pet_name

Terraform module that generates a random pet-style name using the HashiCorp random provider.

## Usage

```hcl
module "pet_name" {
  source = "./modules/random_pet_name"

  length    = 3
  separator = "-"
  prefix    = "demo"
}
```

## Inputs

| Name | Type | Default | Description |
| --- | --- | --- | --- |
| `length` | `number` | `2` | Number of random words in the pet name. |
| `separator` | `string` | `"-"` | Separator used between words. |
| `prefix` | `string` | `null` | Optional prefix added before the generated name. |

## Outputs

| Name | Description |
| --- | --- |
| `name` | Generated pet name. |

## Test

```bash
terraform -chdir=modules/random_pet_name init -input=false
terraform -chdir=modules/random_pet_name test
```
