#!/bin/bash

echo "Validating Template"
aws cloudformation validate-template --template-body file://networking.json


read -p "please enter stack name -   " stackname

read -p "please enter a region like us-east-1, us-east-2, us-west-2 -     " region

echo "Creating nework stack with provided values !"
aws cloudformation create-stack --stack-name "$stackname" --region "$region" --template-body file://networking.json --parameters file://variables.json
