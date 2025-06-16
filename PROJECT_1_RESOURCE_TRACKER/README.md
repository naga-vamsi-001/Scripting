# 📊 AWS Resource Tracker (Shell Script)

## 🔍 Overview

This shell script automates the collection and reporting of key AWS resource details such as:

- S3 Buckets
- EC2 Instances
- Lambda Functions
- IAM Users
- Glue Jobs

It uses AWS CLI commands to pull data and stores the output in a consolidated file named `aws_resourcetracker_output`.

---

## 🎯 Project Objective

To simplify AWS resource inventory management by providing a one-click command that aggregates cloud resource data into a single output log. This is especially useful for audits, infrastructure reviews, or generating snapshots of current AWS usage.

---

## 📦 Resources Tracked

The script uses AWS CLI commands to fetch the following resources:

```bash
aws s3 ls >> aws_resourcetracker_output
aws ec2 describe-instances >> aws_resourcetracker_output
aws lambda list-functions >> aws_resourcetracker_output
aws iam list-users >> aws_resourcetracker_output
aws glue list-jobs >> aws_resourcetracker_output
```

---

## 🧠 Author

- **Name**: Naga Vamsi
- **Date**: 07-June-2025
- **Version**: V1.0

---

## ⚙️ Requirements

- AWS CLI installed and configured (`aws configure`)
- IAM permissions to list:
  - S3 buckets
  - EC2 instances
  - Lambda functions
  - IAM users
  - Glue jobs

---

## 🚀 How to Run

Make the script executable and run it:

```bash
chmod +x aws_resource_tracker.sh
./aws_resource_tracker.sh
```

This will generate a file called:

```
aws_resourcetracker_output
```

containing the report of AWS resource usage.

---

## 🛠️ Future Enhancements

- Filter and format output using `jq`
- Add support for more AWS services (EKS, RDS, etc.)
- Email reporting or upload to S3
- Scheduling using cron

---

## 📝 License

MIT – feel free to use, share, and enhance with credits.