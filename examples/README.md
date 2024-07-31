# Example instance group

## Usage

To run this example you need to execute:

```bash
export YC_FOLDER_ID='folder_id'
terraform init
terraform plan
terraform apply
```

Note that this example may create resources which can cost money. Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >= 0.72.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | >= 0.72.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_address"></a> [address](#module\_address) | ../ | n/a |
| <a name="module_dns_zone"></a> [dns\_zone](#module\_dns\_zone) | git::https://github.com/terraform-yacloud-modules/terraform-yandex-dns.git//modules/zone | v1.0.0 |

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.default](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/vpc_network) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | Creation timestamp of the allocated address |
| <a name="output_deletion_protection"></a> [deletion\_protection](#output\_deletion\_protection) | Deletion protection flag of the allocated address |
| <a name="output_description"></a> [description](#output\_description) | Description of the allocated address |
| <a name="output_dns_record"></a> [dns\_record](#output\_dns\_record) | DNS record details of the allocated address |
| <a name="output_external_ipv4"></a> [external\_ipv4](#output\_external\_ipv4) | External IPv4 address details |
| <a name="output_external_ipv4_address"></a> [external\_ipv4\_address](#output\_external\_ipv4\_address) | Yandex VPC address |
| <a name="output_folder_id"></a> [folder\_id](#output\_folder\_id) | Folder ID of the allocated address |
| <a name="output_id"></a> [id](#output\_id) | ID of the allocated address |
| <a name="output_labels"></a> [labels](#output\_labels) | Labels of the allocated address |
| <a name="output_name"></a> [name](#output\_name) | Name of the allocated address |
| <a name="output_reserved"></a> [reserved](#output\_reserved) | Indicates if the address is reserved |
| <a name="output_used"></a> [used](#output\_used) | Indicates if the address is used |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

Apache-2.0 Licensed.
See [LICENSE](https://github.com/terraform-yacloud-modules/terraform-yandex-instance-group/blob/main/LICENSE).
