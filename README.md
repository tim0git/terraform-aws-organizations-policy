<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.21.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.21.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_organizations_policy.this](https://registry.terraform.io/providers/hashicorp/aws/4.21.0/docs/resources/organizations_policy) | resource |
| [aws_organizations_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/4.21.0/docs/resources/organizations_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_policy_content"></a> [policy\_content](#input\_policy\_content) | The content of the policy. This is a JSON string. | `string` | n/a | yes |
| <a name="input_policy_description"></a> [policy\_description](#input\_policy\_description) | A description to assign to the policy. | `string` | n/a | yes |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | The friendly name to assign to the policy. | `string` | n/a | yes |
| <a name="input_policy_type"></a> [policy\_type](#input\_policy\_type) | The type of policy to create. Valid values are AISERVICES\_OPT\_OUT\_POLICY, BACKUP\_POLICY, SERVICE\_CONTROL\_POLICY (SCP), and TAG\_POLICY. Defaults to SERVICE\_CONTROL\_POLICY. | `string` | `"SERVICE_CONTROL_POLICY"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags to assign to the policy. | `map(string)` | <pre>{<br>  "Name": "terraform-test-policy"<br>}</pre> | no |
| <a name="input_target_id"></a> [target\_id](#input\_target\_id) | The unique identifier (ID) of the root, organizational unit, or account number that you want to attach the policy to. | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_policy_arn"></a> [policy\_arn](#output\_policy\_arn) | The ARN of the policy |
| <a name="output_policy_id"></a> [policy\_id](#output\_policy\_id) | The ID of the policy |
<!-- END_TF_DOCS -->