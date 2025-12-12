aws cloudformation deploy \
  --stack-name infra-s3-terraform \
  --template-file infra_s3_tfstate.yaml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameter-overrides \
    Org=unobtanium \
    TerraformExecutionRoleArn=arn:aws:iam::TODO_ACCOUNT_ID:role/github-actions-oidc
