# 🔐 GitHub Repository Access Tracker

## 📘 Overview

This script helps DevOps engineers track which users have **read (pull)** access to a specific GitHub repository using GitHub's REST API.

---

## 🧠 Author

- **Name**: Naga Vamsi
- **Date**: 08-June-2025
- **Version**: V1.0

---

## 🎯 Purpose

In organizations where multiple teams collaborate across various GitHub repositories, it's critical to maintain control over who has access to what. This script:

- Uses GitHub API to fetch collaborators
- Filters users with read (pull) access
- Helps in onboarding/offboarding, auditing, and security reviews

---

## 🛠️ Prerequisites

- GitHub Personal Access Token with repo access
- `curl` and `jq` installed
- GitHub username and token exported as environment variables:

```bash
export username="your_github_username"
export token="your_github_token"
```

---

## 🚀 How to Run

```bash
chmod +x github_access_tracker.sh
./github_access_tracker.sh <repo_owner> <repo_name>
```

### Example:

```bash
./github_access_tracker.sh naga-vamsi-001 devops-scripts
```

---

## 📦 Output Example

```
Listing users with read access to naga-vamsi-001/devops-scripts:
Naga
Vamsi

```

---

## 📌 Notes

- The script uses `curl` to authenticate and fetch collaborators from GitHub.
- It filters users who have `.permissions.pull == true` using `jq`.
- Ideal for DevOps teams to run during access reviews or repo audits.

---

## 📄 License

MIT License
