#! /bin/bash

STACK_NAME=awsbootstrap
region=us-west-1
CLI_PROFILE=awsbootstrap

EC2_INSTANCE_TYPE=t2.micro

echo -e "\n\n===== deploying main.yml ======"
aws cloudformation deploy \
    --region $region \
    --profile $CLI_PROFILE \
    --stack-name $STACK_NAME \
    --template-file main.yml \
    --no-fail-on-empty-changeset \
    --parameter-overrides \
        EC2InstanceType=$EC2_INSTANCE_TYPE