resource "github_team" "team" {
  name    = var.project_code_name
  privacy = "closed"
}

resource "github_team" "team-admins" {
  name           = "${var.project_code_name}-Admins"
  parent_team_id = github_team.team.id
  privacy        = "closed"
}

resource "github_team" "team-visitors" {
  name           = "${var.project_code_name}-Visitors"
  parent_team_id = github_team.team.id
  privacy        = "closed"
}

resource "github_team" "team-testers" {
  name           = "${var.project_code_name}-Testers"
  parent_team_id = github_team.team.id
  privacy        = "closed"
}

resource "github_team" "team-data-science" {
  name           = "${var.project_code_name}-Data-Scientists"
  parent_team_id = github_team.team.id
  privacy        = "closed"
}

resource "github_team" "team-developers" {
  name           = "${var.project_code_name}-Developers"
  parent_team_id = github_team.team.id
  privacy        = "closed"
}

resource "github_team" "team-developers-frontend" {
  name           = "${var.project_code_name}-Developers-FrontEnd"
  parent_team_id = github_team.team-developers.id
  privacy        = "closed"
}

resource "github_team" "team-developers-backend" {
  name           = "${var.project_code_name}-Developers-BackEnd"
  parent_team_id = github_team.team-developers.id
  privacy        = "closed"
}

resource "github_team" "team-developers-devops" {
  name           = "${var.project_code_name}-Developers-DevOps"
  parent_team_id = github_team.team-developers.id
  privacy        = "closed"
}

resource "github_team" "team-developers-mobile" {
  name           = "${var.project_code_name}-Developers-Mobile"
  parent_team_id = github_team.team-developers.id
  privacy        = "closed"
}

resource "github_team_membership" "admin-membership" {
  count = length(var.admin_members)

  team_id  = github_team.team-admins.id
  username = var.admin_members[count.index]
  role     = "member"
}

resource "github_team_membership" "visitor-membership" {
  count = length(var.visiting_members)

  team_id  = github_team.team-visitors.id
  username = var.visiting_members[count.index]
  role     = "member"
}

resource "github_team_membership" "tester-membership" {
  count = length(var.tester_members)

  team_id  = github_team.team-testers.id
  username = var.tester_members[count.index]
  role     = "member"
}

resource "github_team_membership" "data-science-membership" {
  count = length(var.data_science_members)

  team_id  = github_team.team-data-science.id
  username = var.data_science_members[count.index]
  role     = "member"
}

resource "github_team_membership" "frontend-membership" {
  count = length(var.frontend_members)

  team_id  = github_team.team-developers-frontend.id
  username = var.frontend_members[count.index]
  role     = "member"
}

resource "github_team_membership" "backend-membership" {
  count = length(var.backend_members)

  team_id  = github_team.team-developers-backend.id
  username = var.backend_members[count.index]
  role     = "member"
}

resource "github_team_membership" "devops-membership" {
  count = length(var.devops_members)

  team_id  = github_team.team-developers-devops.id
  username = var.devops_members[count.index]
  role     = "member"
}

resource "github_team_membership" "mobile-membership" {
  count = length(var.mobile_members)

  team_id  = github_team.team-developers-mobile.id
  username = var.mobile_members[count.index]
  role     = "member"
}
