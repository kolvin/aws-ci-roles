include "common" {
  path = find_in_parent_folders("common.hcl")
}

inputs = {
  platform = "github"
  roles = [
    {
      name_suffix = "infrastructure-provisoner" # https://catalog.workshops.aws/iam-policy-types/en-US/6-labs/lab2-cicd-role
      trusted_projects_refs = [
        {
          paths    = ["kolvin/kloud"]
          branches = ["*"]
          tags     = ["*"]
        }
      ]
      templated_policy_statements = [
        {
          template = "terraform-ci"
        }
      ]
    }
  ]
}
