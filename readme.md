This GitHub Action sends a request to the Status AI endpoint to retrieve GitHub issues and integrate them with Slack notifications. The action is designed to facilitate seamless collaboration and task tracking by leveraging GitHub and Slack APIs.

How It Works

When triggered, this action sends a POST request to the Status AI endpoint (https://seal-app-3rqj7.ondigitalocean.app/status). It uses the provided secrets and variables to fetch issues from a specified GitHub repository and, optionally, post them to a Slack channel using a webhook.

Requirements

Required Secrets

You must configure the following secrets in your repository:

GH_TOKEN: Your GitHub personal access token with repo scope.

SLACK_USER_TOKEN: Your Slack user token for interacting with Slack API.

SLACK_TEAM_ID: The Slack team ID.

Required Variables

The following variables must also be set in your repository:

REPO_PATH: The GitHub repository path (e.g., owner/repo).

LOOKBACK_DAYS: Number of days to look back for GitHub issues (default: 3).

Setting Up Secrets and Variables

1. Navigate to Settings > Secrets and Variables > Actions in your GitHub repository.

2. Under Secrets, add the following:

    - GH_TOKEN

    - SLACK_USER_TOKEN

    - SLACK_TEAM_ID

3. Under Variables, add the following:

    - REPO_PATH

    - LOOKBACK_DAYS

