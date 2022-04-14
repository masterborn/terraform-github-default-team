variable "project_code_name" {
  description = "Codename of project"
}

variable "admin_members" {
  description = "Admin team members"
  type        = list(string)
  default     = []
}

variable "visiting_members" {
  description = "Visitors team members"
  type        = list(string)
  default     = []
}

variable "tester_members" {
  description = "Tester team members"
  type        = list(string)
  default     = []
}

variable "backend_members" {
  description = "BackEnd team members"
  type        = list(string)
  default     = []
}

variable "frontend_members" {
  description = "FrontEnd team members"
  type        = list(string)
  default     = []
}

variable "devops_members" {
  description = "DevOps team members"
  type        = list(string)
  default     = []
}

variable "mobile_members" {
  description = "Mobile team members"
  type        = list(string)
  default     = []
}

variable "data_science_members" {
  description = "Data Science team members"
  type        = list(string)
  default     = []
}
