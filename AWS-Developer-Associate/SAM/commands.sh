# create s3

aws s3 mb s3://vince-code-sam


aws cloudformation package --s3-bucket vince-code-sam --template-file template.yaml --output-template-file gen/template-generated.yaml
# or use sam package ....

# deploy
aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM