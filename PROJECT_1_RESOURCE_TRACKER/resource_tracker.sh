#!/bin/bash

#########################
# Author : Naga Vamsi
# Date   : 07-06-2025
# Version: V1.0
#
# This script reports AWS Resource usage
##########################

# Ensure AWS CLI is configured before running this script

# Output file
OUTPUT_FILE="aws_resourcetracker"

# Initialize the output file
echo "AWS Resource Tracker Report - $(date)" > $OUTPUT_FILE
echo "--------------------------------------" >> $OUTPUT_FILE

# List of AWS S3 Buckets
echo -e "\n[S3 Buckets]" >> $OUTPUT_FILE
aws s3 ls >> $OUTPUT_FILE

# List EC2 Instances
echo -e "\n[EC2 Instances]" >> $OUTPUT_FILE
aws ec2 describe-instances >> $OUTPUT_FILE

# List Lambda Functions
echo -e "\n[Lambda Functions]" >> $OUTPUT_FILE
aws lambda list-functions >> $OUTPUT_FILE

# List IAM Users
echo -e "\n[IAM Users]" >> $OUTPUT_FILE
aws iam list-users >> $OUTPUT_FILE

# List AWS Glue Jobs
echo -e "\n[Glue Jobs]" >> $OUTPUT_FILE
aws glue list-jobs >> $OUTPUT_FILE
