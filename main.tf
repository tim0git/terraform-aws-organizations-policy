resource "aws_organizations_policy" "this" {
  name = var.policy_name

  description = var.policy_description

  type = var.policy_type

  content = var.policy_content

  tags = var.tags
}

