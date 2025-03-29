#!/bin/bash

#####################
#Author:Prajwal K K
#
#Date:29/03/2025
#
#Version:v1
##This script will report the AWS resource usage
######################

# AWS s3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x
# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls

#list EC2 Instance
echo "print EC2 instance"
aws ec2 describe-instances |jq '.Reservations[].Instances[].InstanceId'

# list AWS lambda 
echo "print lambda"
aws lambda list-functions

#list IAM users
echo "list iam users"
aws iam list-users
