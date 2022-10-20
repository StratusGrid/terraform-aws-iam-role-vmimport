<!-- BEGIN_TF_DOCS -->
# terraform-aws-iam-role-vmimport

GitHub: [StratusGrid/terraform-aws-iam-role-vmimport](https://github.com/StratusGrid/terraform-aws-iam-role-vmimport)

This module configures an AWS account with with an iam role to facilitate vm imports with vm import/export service, using an existing import bucket.

## Example Usage:
```hcl
module "vmimport" {
  source  = "StratusGrid/iam-role-vmimport/aws"
  version = "2.1.0"
  # source  = "github.com/StratusGrid/terraform-aws-iam-role-vmimport"

  image_bucket_name = "my-bucket-of-images"
  input_tags        = merge(local.common_tags, {})
}
```
---

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.vmimport](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.vmimport](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.vmimport](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_image_bucket_name"></a> [image\_bucket\_name](#input\_image\_bucket\_name) | Bucket where VM Images are stored | `string` | n/a | yes |
| <a name="input_input_tags"></a> [input\_tags](#input\_input\_tags) | Map of tags to apply to resources | `map(string)` | `{}` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | Name of vmimport Role | `string` | `"vmimport"` | no |

## Outputs

No outputs.

---

<span style="color:red">Note:</span> Manual changes to the README will be overwritten when the documentation is updated. To update the documentation, run `terraform-docs -c .config/.terraform-docs.yml .`
<!-- END_TF_DOCS -->