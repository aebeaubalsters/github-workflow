variable "user" {
  type = object({
    name                 = string
    policy_arns          = optional(map(string), {})
    policy_description   = string
  })
}

variable "policy_document_path" {
  type = string
}

module "user" {
  source      = "../user"
  name        = var.user.name
  policy_arns = merge({ (var.user.name) = module.policy.policy_arn }, var.user.policy_arns)
}

module "policy" {
  source               = "../policy"
  name                 = var.user.name
  policy_description   = var.user.policy_description
  policy_document_path = var.policy_document_path
}

output "access_key" {
  value = module.user.access_key
}

output "secret_access_key" {
  value     = module.user.secret_access_key
  sensitive = true
}