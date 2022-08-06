locals {
  cost_center_tagging_policy = yamldecode(file("Examples/templates/tagging_policies/cost_centre_tag_policy_all_resources.yml"))
}

module "root_tagging_policy" {
  source = "../../"

    name = "root_cost_center_tagging_policy"
    description = "Root tagging policy"
    policy_type = "TAG_POLICY"
    policy_content = jsonencode(local.cost_center_tagging_policy)
    target_id = "r-xxxx"
    tags = {
      Name = "root_tagging_policy"
      CostCenter  = "mst-001"
    }
}