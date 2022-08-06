output "policy_arn" {
  value = aws_organizations_policy.this.arn
  description = "The ARN of the policy"
}

output "policy_id" {
  value = aws_organizations_policy.this.id
  description = "The ID of the policy"
}



