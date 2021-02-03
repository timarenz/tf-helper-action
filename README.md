# The Terraform Helper GitHub Action

This action is a wrapper for the Terraform Helper: https://github.com/hashicorp-community/tf-helper.

## Example usage

```yaml
jobs:
    build:
        # ...
        steps:
            - name: New Terraform Cloud workspace
              uses: timarenz/tf-helper-action@v0.0.3
              with:
                command: workspace new
                org: my-tfc-org
                workspace: my-new-workspace
                token: ${{ secrets.TFC_API_TOKEN }}
```

## Inputs

### `command`

**Required** The tfh command you want to run. No need to add tfh itself. For examples see: https://github.com/hashicorp-community/tf-helper#subcommands.

### `org`

**Required** Terraform Cloud/Enterprise organization to use.

### `workspace`

**Required** Terraform Cloud/Enterprise workspace to use.

### `token`

**Required** Token to use to connect to Terraform Cloud/Enterprise.

### `hostname`

Hostname of a Terraform (Enterprise) instance. No need to change unless you have a self-hosted installation.. Default `app.terraform.io`.
