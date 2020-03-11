# Application 

## Application Stack cloud formation

This stack instantiates a EC2 instance with provided paramaters in variables.json file. There is a RDS instance associated to
EC2 stack which boots up with the credentials provided by user. 

**Cloud Formation Stack**
The stack will create the following resources into aws account.
1. VPC
2. Application Security group to open up port for application
3. RDS Security group 
4. Internet gateway & Routing tables
5. Code deploy roles and policies associated with roles
6. CircleCI user policy to run the code deploy & upload code artifact in S3 
6. Trigger the EC2 instance and RDS Instance

**Environment Variables**
Environment variables such as VPC name, CIDR block values, RDS size EC2 Instance names etc. are provided in variables.json 
and should be populted with correct values before running cloudformation.

**Set AWS User profile in aws-cli**
aws configure --profile "produser"
Provide - key, secret key, region and output format.

_Note_ : Before creating and deleting any stack make sure an aws user profile is setup in your aws-cli
Set a particular aws user using the following command:
`export AWS_DEFAULT_PROFILE=user`

**run Cloud Formation**
The following shell script will validate the cloudformation template and start building the stack.
parameters to be passed - Stackname and Region

run the following command on your terminal - `./build.sh`

 **Delete Cloud Formation Stack**
The following shell script will validate if the provided stack name exist in the region and then delete the stack.
parameters to be passed - Stackname and Region

run the following command on your terminal - `./delete.sh`
