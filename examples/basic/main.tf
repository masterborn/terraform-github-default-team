module "team" {
  source = "git@github.com:masterborn/terraform-github-default-team.git?ref={{ provider_version }}"

  project_code_name    = "some-repository-name"
  admin_members        = ["john-doe"]
  backend_members      = ["jan-kowalski"]
  frontend_members     = ["jan-kowalski", "john-doe"]
  data_science_members = ["github-data-science-member-name"]
  tester_members       = ["github-tester-member-name"]
  visiting_members     = ["visitor-name"]
}
