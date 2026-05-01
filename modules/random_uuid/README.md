# random_uuid

Terraform module that generates a random UUID.

## Usage

```hcl
module "uuid" {
  source = "./modules/random_uuid"
}
```

## Inputs

This module has no input variables.

## Outputs

| Name | Description |
| --- | --- |
| `uuid` | Generated UUID value. |

## Test

```bash
terraform -chdir=modules/random_uuid init -input=false
terraform -chdir=modules/random_uuid test
```
