# 📊 AWS Resource Tracker (Shell Script)

## 🔍 Overview

This shell script automates the collection and reporting of key AWS resource details such as:

- S3 Buckets
- EC2 Instances
- Lambda Functions
- IAM Users
- Glue Jobs

It uses AWS CLI commands to pull data and stores the output in a consolidated file named `aws_resourcetracker`.

---

## 🧠 Author

- **Name**: Naga Vamsi
- **Date**: 07-June-2025
- **Version**: V1.0

---

## ⚙️ Requirements

- AWS CLI configured (`aws configure`)
- IAM permissions to list:
  - S3 buckets
  - EC2 instances
  - Lambda functions
  - IAM users
  - Glue jobs

---

## 🚀 How to Run

```bash
chmod +x aws_resource_tracker.sh
./aws_resource_tracker.sh
```

This will generate:

```
aws_resourcetracker
```

containing the AWS resource report.

---

## 🛠️ Future Enhancements

- Filter and format output using `jq`
- Add support for more AWS services (EKS, RDS, etc.)
- Email reporting or upload to S3
- Scheduling using cron

---

## 📝 License

MIT – feel free to use, share, and enhance with credits.
