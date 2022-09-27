locals {
    workspace_path = "./workspaces/${terraform.workspace}.yaml"
    defaults       = file("./workspaces/defaults.yaml")
    workspace = fileexists(local.workspace_path) ? file(local.workspace_path) : yamlencode({})
    settings = merge(
        yamldecode(local.defaults),
        yamldecode(local.workspace)
    )
}

output "project_settings" {
    value = local.settings
}