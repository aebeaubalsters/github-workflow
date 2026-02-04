variable "name" {
  type = string
}

variable "policy_arns" {
  type    = map(string)
  default = {}
}

variable "group_names" {
  type    = list(string)
  default = []
}