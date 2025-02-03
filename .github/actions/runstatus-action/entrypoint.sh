#!/bin/bash

set -e

# Capture inputs as environment variables
GITHUB_TOKEN=$1
REPO_NAME=$2
REPO_OWNER=$3
SLACK_USER_TOKEN=$4
LOOKBACK_DAYS=$5
SLACK_TEAM_ID=$6
SLACK_WEBHOOK_URL=$7
RECIPIENTS=$8

echo "Executing GitHub Repo Status Notifier..."
echo "$RECIPIENTS"

curl -X POST \
  -H "Content-Type: application/json" \
  -d '{
    "github_token": "'"$GITHUB_TOKEN"'",
    "repo_name": "'"$REPO_NAME"'",
    "repo_owner": "'"$REPO_OWNER"'",
    "slack_user_token": "'"$SLACK_USER_TOKEN"'",
    "lookback_days": '"$LOOKBACK_DAYS"',
    "slack_team_id": "'"$SLACK_TEAM_ID"'",
    "slack_webhook_url": "'"$SLACK_WEBHOOK_URL"'",
    "to_email": '"$RECIPIENTS"'
  }' \
  https://runstatus.dev/api/v0/status
