#!/bin/bash
export SLACKBOT_API_TOKEN="${SLACK_TOKEN}"
until /usr/bin/python -c "import atxcf; atxcf.start_agent()"; do
    echo ":// agent crashed with exit code $?.  Respawning.." >&2
    sleep 1
done
