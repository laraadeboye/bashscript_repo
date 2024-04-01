#!/bin/bash

###################################
# Author: Larracode
# Date: 8th-Mar-2024

# Version: v1
#
#This script will report the AWS resource usage
###################################

set -x
# AWS s3
# AWS EC2
# AWS Lambda
# AWS IAM Users


# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > awsresourceTracker

# list EC2 Instance
"Print list of EC2 Instances"
aws ec2 describe-instances | jq '. Reservations[].Instances[].InstanceId'

# list lambda
"Print list of lambda function"
aws lambda list-functions >> > awsresourceTracker

# list aws iam users
"Print list of IAM users"
aws iam list-users


