#!/bin/bash

set -e


if [[ "$RECIPIENTS" != \[*\] ]]; then
  RECIPIENTS="[\"$RECIPIENTS\"]"
fi

# Capture inputs as environment variables
echo "Executing GitHub Repo Status Notifier..."

echo "REPO_NAME: $REPO_NAME"
echo "REPO_OWNER: $REPO_OWNER"
echo "RECIPIENTS: $RECIPIENTS"

curl -X POST \
  -H "Content-Type: application/json" \
  -d '{
    "github_token": "'"$GITHUB_TOKEN"'",
    "repo_name": "'"$REPO_NAME"'",
    "repo_owner": "'"$REPO_OWNER"'",
    "slack_user_token": "'"$SLACK_USER_TOKEN"'",
    "slack_team_id": "'"$SLACK_TEAM_ID"'",
    "slack_webhook_url": "'"$SLACK_WEBHOOK_URL"'",
    "to_email": '"$RECIPIENTS"'
  }' \
  https://runstatus.dev/api/v0/status
