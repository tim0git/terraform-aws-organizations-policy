resource "aws_organizations_policy" "this" {
  name = var.policy_name

  description = var.policy_description

  type = var.policy_type

  content = var.policy_content

  tags = var.tags
}

resource "aws_organizations_policy_attachment" "this" {
  policy_id = aws_organizations_policy.this.id
  target_id = var.target_id
}
