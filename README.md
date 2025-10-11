# Yandex Cloud Address Terraform module

Terraform module which creates Yandex Cloud Address resources.

## Examples

Examples codified under
the [`examples`](https://github.com/terraform-yacloud-modules/terraform-yandex-vpc/tree/main/examples) are intended
to give users references for how to use the module(s) as well as testing/validating changes to the source code of the
module. If contributing to the project, please be sure to make any appropriate updates to the relevant examples to allow
maintainers to test your changes and to keep the examples up to date for users. Thank you!

<!-- BEGIN_TF_DOCS -->
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

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_address.address](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_address) | resource |
| [yandex_client_config.client](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ddos_protection_provider"></a> [ddos\_protection\_provider](#input\_ddos\_protection\_provider) | Enable DDOS protection. Possible values are: 'qrator' | `string` | `null` | no |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | Flag to enable deletion protection for the resource.When enabled, prevents accidental deletion of the resource. | `string` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | An optional description of the static external IP address resource. Helps identify the purpose of the address. | `string` | `null` | no |
| <a name="input_dns_record"></a> [dns\_record](#input\_dns\_record) | DNS record specification of address | <pre>object({<br/>    fqdn        = string<br/>    dns_zone_id = string<br/>    ttl         = optional(number)<br/>    ptr         = optional(bool)<br/>  })</pre> | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels to apply to this resource | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the address | `string` | n/a | yes |
| <a name="input_outgoing_smtp_capability"></a> [outgoing\_smtp\_capability](#input\_outgoing\_smtp\_capability) | Enables outgoing SMTP capability for the static external IP address. Required for sending emails from applications using this IP address. | `string` | `null` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | Zone for allocating address | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | Creation timestamp of the allocated address |
| <a name="output_deletion_protection"></a> [deletion\_protection](#output\_deletion\_protection) | Deletion protection flag of the allocated address |
| <a name="output_description"></a> [description](#output\_description) | Description of the allocated address |
| <a name="output_dns_record"></a> [dns\_record](#output\_dns\_record) | DNS record configuration details associated with the allocated static external IP address, if configured. |
| <a name="output_external_ipv4"></a> [external\_ipv4](#output\_external\_ipv4) | Complete details of the external IPv4 address configuration, including address, zone, and other metadata. |
| <a name="output_external_ipv4_address"></a> [external\_ipv4\_address](#output\_external\_ipv4\_address) | The actual IPv4 address value of the allocated static external IP address. |
| <a name="output_folder_id"></a> [folder\_id](#output\_folder\_id) | The ID of the Yandex Cloud folder where the static external IP address is located. |
| <a name="output_id"></a> [id](#output\_id) | The unique identifier of the allocated static external IP address |
| <a name="output_labels"></a> [labels](#output\_labels) | Labels of the allocated address |
| <a name="output_name"></a> [name](#output\_name) | Name of the allocated address |
| <a name="output_reserved"></a> [reserved](#output\_reserved) | Indicates if the address is reserved |
| <a name="output_used"></a> [used](#output\_used) | Indicates if the address is used |
<!-- END_TF_DOCS -->

## License

Apache-2.0 Licensed.
See [LICENSE](https://github.com/terraform-yacloud-modules/terraform-yandex-vpc/blob/main/LICENSE).
