# Application 

## Application Stack cloud formation

This stack instantiates a EC2 instance with provided paramaters in variables.json file. There is a RDS instance associated to
EC2 stack which boots up with the credentials provided by user. 


**Environment Variables**

1. VPC name
2. VPC CidrBlock
3. Subnet CidrBlocks
4. AWS Regions
5. EC2 Volume
6. RDS Volume
7. RDS Credentials - Username, password, DBname etc
8. AMI Image 
9. Iam Role Name
10. Iam Policy 

**Set AWS User profile in aws-cli**
aws configure --profile "produser"
Provide - key, secret key, region and output format.

_Note_ : Before creating and deleting any stack make sure an aws user profile is setup in your aws-cli
Set a particular aws user using the following command:
`export AWS_DEFAULT_PROFILE=user`

**run Cloud Formation**

run the following command on your terminal - `./build.sh`

 **Delete Cloud Formation Stack**

run the following command on your terminal - `./delete.sh`
