include "common" {
  path = find_in_parent_folders("common.hcl")
}

inputs = {
  platform = "github"
  roles = [
    {
      name_suffix = "admin"
      trusted_projects_refs = [
        {
          paths    = ["kolvin/kloud"]
          branches = ["*"]
          tags     = ["*"]
        }
      ]
      managed_policies = ["AdministratorAccess", "AmazonSQSFullAccess"]
    }
  ]
}
