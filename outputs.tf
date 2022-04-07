output "main_id" {
  value = github_team.team.id
}

output "admins_id" {
  value = github_team.team-admins.id
}

output "visitors_id" {
  value = github_team.team-visitors.id
}

output "testers_id" {
  value = github_team.team-testers.id
}

output "developers_id" {
  value = github_team.team-developers.id
}

output "developers_frontend_id" {
  value = github_team.team-developers-frontend.id
}

output "developers_backend_id" {
  value = github_team.team-developers-backend.id
}

output "developers_devops_id" {
  value = github_team.team-developers-devops.id
}

output "developers_mobile_id" {
  value = github_team.team-developers-mobile.id
}

output "data_science_id" {
  value = github_team.team-data-science.id
}
