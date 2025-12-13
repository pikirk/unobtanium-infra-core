locals {
  org        = "unobtanium"
  domain     = "core"
  aws_region = "us-east-1"

  # Environment suffix (dev|stage|prod) is provided via var.env.
  env = var.env

  # tfstate bucket and lock table name conventions
  tfstate_bucket_name = "${local.org}-tfstate-${local.domain}-${local.env}"
  lock_table_name     = "terraform-locks-${local.org}-${local.domain}-${local.env}"

  # stack organization conventions
  # unobtanium/core/{env}/{stack_group}/{stack}/terraform.tfstate
  stack_group = "api"
  stack_name  = "core-api-gateway"
  state_key   = "${local.org}/${local.domain}/${local.env}/${local.stack_group}/${local.stack_name}/terraform.tfstate"

  # KMS per env (alias includes env suffix)
  kms_alias_name = "alias/terraform-tfstate-${local.domain}-${local.env}"

  tags = {
    org        = local.org
    domain     = local.domain
    env        = local.env
    stack      = local.stack_name
    managed-by = "terraform"
  }
}
