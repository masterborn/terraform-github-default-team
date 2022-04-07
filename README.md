# terraform-github-default-team

Resource that allows to declare [github teams](https://docs.github.com/en/organizations/organizing-members-into-teams/about-teams) for repository.

<!-- START_OF_AUTO_GENERATED_SECTION -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_github"></a> [github](#requirement\_github) | < 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | < 5.0 |
## Resources

| Name | Type |
|------|------|
| [github_team.team](https://registry.terraform.io/providers/github/latest/docs/resources/team) | resource |
| [github_team.team-admins](https://registry.terraform.io/providers/github/latest/docs/resources/team) | resource |
| [github_team.team-data-science](https://registry.terraform.io/providers/github/latest/docs/resources/team) | resource |
| [github_team.team-developers](https://registry.terraform.io/providers/github/latest/docs/resources/team) | resource |
| [github_team.team-developers-backend](https://registry.terraform.io/providers/github/latest/docs/resources/team) | resource |
| [github_team.team-developers-devops](https://registry.terraform.io/providers/github/latest/docs/resources/team) | resource |
| [github_team.team-developers-frontend](https://registry.terraform.io/providers/github/latest/docs/resources/team) | resource |
| [github_team.team-developers-mobile](https://registry.terraform.io/providers/github/latest/docs/resources/team) | resource |
| [github_team.team-testers](https://registry.terraform.io/providers/github/latest/docs/resources/team) | resource |
| [github_team.team-visitors](https://registry.terraform.io/providers/github/latest/docs/resources/team) | resource |
| [github_team_membership.admin-membership](https://registry.terraform.io/providers/github/latest/docs/resources/team_membership) | resource |
| [github_team_membership.backend-membership](https://registry.terraform.io/providers/github/latest/docs/resources/team_membership) | resource |
| [github_team_membership.data-science-membership](https://registry.terraform.io/providers/github/latest/docs/resources/team_membership) | resource |
| [github_team_membership.devops-membership](https://registry.terraform.io/providers/github/latest/docs/resources/team_membership) | resource |
| [github_team_membership.frontend-membership](https://registry.terraform.io/providers/github/latest/docs/resources/team_membership) | resource |
| [github_team_membership.mobile-membership](https://registry.terraform.io/providers/github/latest/docs/resources/team_membership) | resource |
| [github_team_membership.tester-membership](https://registry.terraform.io/providers/github/latest/docs/resources/team_membership) | resource |
| [github_team_membership.visitor-membership](https://registry.terraform.io/providers/github/latest/docs/resources/team_membership) | resource |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_code_name"></a> [project\_code\_name](#input\_project\_code\_name) | Codename of project | `any` | n/a | yes |
| <a name="input_admin_members"></a> [admin\_members](#input\_admin\_members) | Admin team members | `list(string)` | `[]` | no |
| <a name="input_visiting_members"></a> [visiting\_members](#input\_visiting\_members) | Visitors team members | `list(string)` | `[]` | no |
| <a name="input_tester_members"></a> [tester\_members](#input\_tester\_members) | Tester team members | `list(string)` | `[]` | no |
| <a name="input_backend_members"></a> [backend\_members](#input\_backend\_members) | BackEnd team members | `list(string)` | `[]` | no |
| <a name="input_frontend_members"></a> [frontend\_members](#input\_frontend\_members) | FrontEnd team members | `list(string)` | `[]` | no |
| <a name="input_devops_members"></a> [devops\_members](#input\_devops\_members) | DevOps team members | `list(string)` | `[]` | no |
| <a name="input_mobile_members"></a> [mobile\_members](#input\_mobile\_members) | Mobile team members | `list(string)` | `[]` | no |
| <a name="input_data_science_members"></a> [data\_science\_members](#input\_data\_science\_members) | Data Science team members | `list(string)` | `[]` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_main_id"></a> [main\_id](#output\_main\_id) | n/a |
| <a name="output_admins_id"></a> [admins\_id](#output\_admins\_id) | n/a |
| <a name="output_visitors_id"></a> [visitors\_id](#output\_visitors\_id) | n/a |
| <a name="output_testers_id"></a> [testers\_id](#output\_testers\_id) | n/a |
| <a name="output_developers_id"></a> [developers\_id](#output\_developers\_id) | n/a |
| <a name="output_developers_frontend_id"></a> [developers\_frontend\_id](#output\_developers\_frontend\_id) | n/a |
| <a name="output_developers_backend_id"></a> [developers\_backend\_id](#output\_developers\_backend\_id) | n/a |
| <a name="output_developers_devops_id"></a> [developers\_devops\_id](#output\_developers\_devops\_id) | n/a |
| <a name="output_developers_mobile_id"></a> [developers\_mobile\_id](#output\_developers\_mobile\_id) | n/a |
| <a name="output_data_science_id"></a> [data\_science\_id](#output\_data\_science\_id) | n/a |

## Examples

### Basic example
```hcl
module "team" {
  source = "git@github.com:masterborn/terraform-github-default-team.git?ref=v0.0.0"

  project_code_name    = "some-repository-name"
  admin_members        = ["john-doe"]
  backend_members      = ["jan-kowalski"]
  frontend_members     = ["jan-kowalski", "john-doe"]
  data_science_members = ["github-data-science-member-name"]
  tester_members       = ["github-tester-member-name"]
  visiting_members     = ["visitor-name"]
}
```
<!-- END_OF_AUTO_GENERATED_SECTION -->

## Enabling pre-commit hooks

Following pre-commit hooks are provided:

- [terraform-fmt](https://github.com/antonbabenko/pre-commit-terraform#terraform_fmt) to check syntax of terraform
- [terraform-docs](https://github.com/terraform-docs/terraform-docs) to recreate README.md according to terraform module properties
- [end-of-file-fixer](https://github.com/pre-commit/pre-commit-hooks#end-of-file-fixer) to ensure that each file ends with newline

### Requirements

- [pre-commit](https://pre-commit.com/#installation)

### Installation
To install `pre-commit` check .

```bash
pre-commit install
```
