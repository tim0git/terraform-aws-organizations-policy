locals {
  deny_create_iam_user_access_key_policy = yamldecode(file("Examples/templates/service_control_policies/deny_create_iam_user_access_key.yml"))
}

module "root_tagging_policy" {
  source = "../../"

    name = "production_deny_create_iam_user_access_key_policy"
    description = "Production Service Control Policy deny create iam user and access keys policy"
    policy_content = jsonencode(local.deny_create_iam_user_access_key_policy)
    target_id = "123456789101"
    tags = {
      Name = "production_deny_create_iam_user_access_key_policy"
      CostCenter  = "prd-001"
    }
}