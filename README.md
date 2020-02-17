# infrastructure 

## Network Stack cloud formation

** External Parameter **

1. VPC name
2. VPC CidrBlock
3. Subnet CidrBlocks
4. Availability Zones

**run Cloud Formation**

`aws cloudformation create-stack \`
 `--stack-name CloudStackName \`
 `--template-body file://networking.json \`
 `--parameters file://variables.json`

 **Delete Cloud Formation Stack**

 `aws cloudformation delete-stack --stack-name CloudStackName`

