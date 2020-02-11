#!/usr/bin/env sh

# npm install
# npm run lint
# npm run test

export BUILD_DATE=$(date)
export GIT_HASH=$(git rev-parse HEAD)
npm ls --depth=0 --json | jq ".status=\"green\"|.buildDate=\"$BUILD_DATE\"|.gitHash=\"$GIT_HASH\"" > healthz.json
npm run build
docker build -t ui-app:latest .
