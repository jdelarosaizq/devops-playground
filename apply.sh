#!/bin/bash
set -x
OWNER=$1
REPO=$2
ARTIFACT_ID=$3

curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/$OWNER/$REPO/actions/artifact/$ARTIFACT_ID