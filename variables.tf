variable "policy_name" {
  default = null
  description = "The friendly name to assign to the policy."
  type = string
}

variable "policy_description" {
  default = null
  description = "A description to assign to the policy."
  type = string
}

variable "policy_type" {
  default = "SERVICE_CONTROL_POLICY"
  description = "The type of policy to create. Valid values are AISERVICES_OPT_OUT_POLICY, BACKUP_POLICY, SERVICE_CONTROL_POLICY (SCP), and TAG_POLICY. Defaults to SERVICE_CONTROL_POLICY."
  type = string
}

variable "policy_content" {
  default = null
  description = "The content of the policy. This is a JSON string."
  type = string
}

variable "target_id" {
  default = null
  description = "The unique identifier (ID) of the root, organizational unit, or account number that you want to attach the policy to."
  type = string
}

variable "tags" {
  default = {
    Name = "terraform-test-policy"
  }
  description = "The tags to assign to the policy."
  type = map(string)
}
