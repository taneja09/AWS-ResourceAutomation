# infrastructure 

## Network Stack cloud formation

**Environment Variables**

1. VPC name
2. VPC CidrBlock
3. Subnet CidrBlocks
4. AWS Regions

**Set AWS User profile in aws-cli**
aws configure --profile produser
Provide - key, secret key, region and output format.

_Note_ : Before creating and deleting any stack make sure an aws user default profile is setup in your aws-cli
Set a particular aws user using the following command:
`export AWS_DEFAULT_PROFILE=user`

**run Cloud Formation**

run the following command on your terminal - `./build.sh`

 **Delete Cloud Formation Stack**

run the following command on your terminal - `./delete.sh`

