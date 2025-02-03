#!/bin/bash

set -e

# Capture inputs as environment variables
echo "Executing GitHub Repo Status Notifier..."

echo "GITHUB_TOKEN: $GITHUB_TOKEN"
echo "REPO_NAME: $REPO_NAME"
echo "REPO_OWNER: $REPO_OWNER"
echo "SLACK_USER_TOKEN: $SLACK_USER_TOKEN"
echo "LOOKBACK_DAYS: $LOOKBACK_DAYS"
echo "SLACK_TEAM_ID: $SLACK_TEAM_ID"
echo "SLACK_WEBHOOK_URL: $SLACK_WEBHOOK_URL"
echo "RECIPIENTS: $RECIPIENTS"  # This should now print the value of the recipients

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
