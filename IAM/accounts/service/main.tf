locals {
  service_users = {
    //svc-beau-test = { name = "svc-beau-test", policy_arns = {}, policy_description = "Beau's test service user for restarting ec2 instances" },
    //key = { name = "service-user-name", policy_arns = { arbitrary_key = Policy ARNs of any existing policies you want to add to this User (such as default AWS created policies) }, policy_description = "Policy description for the generated policy in IAM/accounts/service/account-name" }
  }
}

module "service_user" {
  source               = "../../modules/service-user"
  for_each             = local.service_users
  user                 = each.value
  policy_document_path = "${path.module}/${each.value.name}/${each.value.name}.json"
}