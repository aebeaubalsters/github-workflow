//create service accounts
module "service_users" {
  source     = "./accounts/service"
}

module "service_roles" {
  source     = "./roles/service"
}