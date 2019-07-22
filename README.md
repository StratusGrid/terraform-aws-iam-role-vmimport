### Example Usage:
```
module "vmimport" {
  source = "StratusGrid/iam-role-vmimport"
  version = "1.0.1"
  # source = "github.com/StratusGrid/terraform-aws-iam-role-vmimport"
  image_bucket_name = "my-bucket-of-images"
  input_tags  = "${merge(local.common_tags,
    map(
    )
  )}"
}
```