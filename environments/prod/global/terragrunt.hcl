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
      managed_policies = ["AdministratorAccess"]
    }
    // {
    //   name_suffix = "s3-readwrite"
    //   trusted_projects_refs = [
    //     { 
    //       paths = ["kolvin/cdn-assets"]
    //       branches = ["*"]
    //       tags = ["*"]
    //     }
    //   ]
    //   managed_policies = ["AmazonS3FullAccess", "AdministratorAccess"]
    // },
    // {
    //   name_suffix = "s3-readonly"
    //   trusted_projects_refs = [
    //     { 
    //       paths = ["kolvin/cdn-assets"]
    //       branches = ["*"]
    //       tags = ["*"]
    //     }
    //   ]
    //   templated_policy_statements = [
    //     {
    //       template = "s3-readonly"
    //       values = {
    //         paths: ["some-bucket-prefix/*"]
    //       }
    //     }
    //   ]
    // }
  ]
}
