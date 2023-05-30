#!/bin/bash
#set -x
OWNER=$1
REPO=$2
ARTIFACT_NAME=$3
SCRIPT_NAME="${ARTIFACT_NAME}.sh"
ARTIFACT_FILE="${ARTIFACT_NAME}.zip"

ARTIFACT_ID=$(curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/$OWNER/$REPO/actions/artifacts  | jq -r ".artifacts[] | select(.name==\"${ARTIFACT_NAME}\") | .id")

curl -v -L --output $ARTIFACT_FILE\
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -H "Authorization: Bearer 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" \
  https://api.github.com/repos/$OWNER/$REPO/actions/artifacts/$ARTIFACT_ID/zip

unzip -u $ARTIFACT_FILE

chmod +x $SCRIPT_NAME

sh $SCRIPT_NAME