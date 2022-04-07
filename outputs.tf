output "main_id" {
  description = "Team of all repository members"
  value       = github_team.team.id
}

output "admins_id" {
  description = "Team of repository administrators"
  value       = github_team.team-admins.id
}

output "data_science_id" {
  description = "Data science repository team"
  value       = github_team.team-data-science.id
}

output "visitors_id" {
  description = "Repository visitor team"
  value       = github_team.team-visitors.id
}

output "testers_id" {
  description = "Repository testing team"
  value       = github_team.team-testers.id
}

output "developers_id" {
  description = "Team of all developers in the repository (frontent, backend, devops and mobile developers)"
  value       = github_team.team-developers.id
}

output "developers_frontend_id" {
  description = "Team of front-end developers in the repository"
  value       = github_team.team-developers-frontend.id
}

output "developers_backend_id" {
  description = "Team of back-end developers in the repository"
  value       = github_team.team-developers-backend.id
}

output "developers_mobile_id" {
  description = "Team of mobile developers in the repository"
  value       = github_team.team-developers-mobile.id
}

output "developers_devops_id" {
  description = "Team of devops in the repository"
  value       = github_team.team-developers-devops.id
}
