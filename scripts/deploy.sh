#!/bin/bash
ENV=$1
echo "Deploying to environment: $ENV"

if [ "$ENV" == "staging" ]; then
  echo "Deploying to staging..."
  # scp target/app.jar user@staging-server:/opt/apps/
else
  echo "Unknown environment"
  exit 1
fi
