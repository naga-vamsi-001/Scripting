#!/bin/bash

#########################
# Author : Naga Vamsi
# Date   : 08-06-2025
# Version: V2
# Description: This script lists users with read access to a given GitHub repository
#########################

helper()

API_URL="https://api.github.com"

# GitHub username and personal access token are expected to be set using export
USERNAME=$username
TOKEN=$token

# Repository owner and name are passed as arguments
REPO_OWNER=$1
REPO_NAME=$2

# Function to send authenticated GET request to GitHub API
function github_api_get {
    local endpoint="$1"
    local url="${API_URL}/${endpoint}"
    curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

# Function to list users with read (pull) access
function list_users_with_read_access {
    local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"
    collaborators=$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')

    if [[ -z "$collaborators" ]]; then
        echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
    else
        echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
        echo "$collaborators"
    fi
}

function helper {
    expected_cmd_agrs=2
    if [ $# -ne $expected_cmd_agrs]; then
    echo "please execute the script with required cmd agrs"
    echo "cmd agrs 1.org_name 2.repo_name"
}

# Main script

echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}..."
list_users_with_read_access