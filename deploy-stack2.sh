set instance_type="t2.small"
aws cloudformation deploy --stack-name WordPressServer --template-file main7.yml --parameter-overrides InstanceType=%instance_type%

if [ $? -eq 0 ]; then
  dns=$(aws cloudformation list-exports --query "Exports[?Name=='PublicDnsName'].Value" --output text)
  echo "Funciona"
fi