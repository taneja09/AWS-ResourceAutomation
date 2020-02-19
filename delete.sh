#!/bin/bash

echo "You are trying to delete a stack !!"

read -p "please enter stack name to delete -   " stackname

read -p "please enter region of stack mentioned above -    " regionD

echo "Deleting your stack with provided information !"
aws cloudformation delete-stack --region "$regionD" --stack-name "$stackname"