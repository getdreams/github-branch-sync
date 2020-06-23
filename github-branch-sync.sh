#!/bin/sh

set -e

SOURCE_BRANCH=$1
DESTINATION_BRANCH=$2

if [[ -z "$SOURCE_BRANCH" ]]; then
  echo "Missing \$SOURCE_BRANCH"
  exit 1
fi

if [[ -z "$DESTINATION_BRANCH" ]]; then
  echo "Missing \$DESTINATION_BRANCH"
  exit 1
fi

echo "SOURCE_BRANCH=$SOURCE_BRANCH"
echo "DESTINATION_BRANCH=$DESTINATION_BRANCH"

git checkout -B $DESTINATION_BRANCH
git push origin $DESTINATION_BRANCH --force
