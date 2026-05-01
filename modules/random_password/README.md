# random_password

Terraform module that generates a password using the HashiCorp random provider.

## Usage

```hcl
module "password" {
  source = "./modules/random_password"

  length      = 24
  special     = true
  min_lower   = 1
  min_upper   = 1
  min_numeric = 1
  min_special = 1
}
```

## Inputs

| Name | Type | Default | Description |
| --- | --- | --- | --- |
| `length` | `number` | `20` | Length of the generated password. |
| `lower` | `bool` | `true` | Include lowercase characters. |
| `upper` | `bool` | `true` | Include uppercase characters. |
| `numeric` | `bool` | `true` | Include numeric characters. |
| `special` | `bool` | `true` | Include special characters. |
| `min_lower` | `number` | `1` | Minimum number of lowercase characters. |
| `min_upper` | `number` | `1` | Minimum number of uppercase characters. |
| `min_numeric` | `number` | `1` | Minimum number of numeric characters. |
| `min_special` | `number` | `1` | Minimum number of special characters. |
| `override_special` | `string` | `null` | Custom set of special characters to use. |

## Outputs

| Name | Description |
| --- | --- |
| `password` | Generated password (sensitive). |
| `length` | Length of the generated password (sensitive). |

## Test

```bash
terraform -chdir=modules/random_password init -input=false
terraform -chdir=modules/random_password test
```
