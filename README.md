<!-- BEGIN_TF_DOCS -->
<p align="center">                                                                                                                                            
                                                                                
  <img src="https://github.com/StratusGrid/terraform-readme-template/blob/main/header/stratusgrid-logo-smaller.jpg?raw=true" />
  <p align="center">
    <a href="https://stratusgrid.com/book-a-consultation">Contact Us Test</a>
    <a href="https://stratusgrid.com/cloud-cost-optimization-dashboard">Stratusphere FinOps</a>
    <a href="https://stratusgrid.com">StratusGrid Home</a>
    <a href="https://stratusgrid.com/blog">Blog</a>
  </p>
</p>

# terraform-aws-iam-role-vmimport
GitHub: [StratusGrid/terraform-aws-iam-role-vmimport](https://github.com/StratusGrid/terraform-aws-iam-role-vmimport)
## Example
```hcl
module "vmimport" {
  source  = "StratusGrid/iam-role-vmimport/aws"
  version = "2.0.0"
  # source  = "github.com/StratusGrid/terraform-aws-iam-role-vmimport"
  image_bucket_name = "my-bucket-of-images"
  input_tags        = merge(local.common_tags, {})
}
```
## StratusGrid Standards we assume
- All resource names and name tags shall use `_` and not `-`s
- The old naming standard for common files such as inputs, outputs, providers, etc was to prefix them with a `-`, this is no longer true as it's not POSIX compliant. Our pre-commit hooks will fail with this old standard.
- StratusGrid generally follows the TerraForm standards outlined [here](https://www.terraform-best-practices.com/naming)
## Repo Knowledge
Repository for Module vmimport
## Documentation
This repo is self documenting via Terraform Docs, please see the note at the bottom.
### `LICENSE`
This is the standard Apache 2.0 License as defined [here](https://stratusgrid.atlassian.net/wiki/spaces/TK/pages/2121728017/StratusGrid+Terraform+Module+Requirements).
### `outputs.tf`
The StratusGrid standard for Terraform Outputs.
### `README.md`
It's this file! I'm always updated via TF Docs!
### `tags.tf`
The StratusGrid standard for provider/module level tagging. This file contains logic to always merge the repo URL.
### `variables.tf`
All variables related to this repo for all facets.
One day this should be broken up into each file, maybe maybe not.
### `versions.tf`
This file contains the required providers and their versions. Providers need to be specified otherwise provider overrides can not be done.
## Documentation of Misc Config Files
This section is supposed to outline what the misc configuration files do and what is there purpose
### `.config/.terraform-docs.yml`
This file auto generates your `README.md` file.
### `.github/workflows/pre-commit.yml`
This file contains the instructions for Github workflows, in specific this file run pre-commit and will allow the PR to pass or fail. This is a safety check and extras for if pre-commit isn't run locally.
### `examples/*`
The files in here are used by `.config/terraform-docs.yml` for generating the `README.md`. All files must end in `.tfnot` so Terraform validate doesn't trip on them since they're purely example files.
### `.gitignore`
This is your gitignore, and contains a slew of default standards.
---
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.9 |
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
Note, manual changes to the README will be overwritten when the documentation is updated. To update the documentation, run `terraform-docs -c .config/.terraform-docs.yml`
<!-- END_TF_DOCS -->