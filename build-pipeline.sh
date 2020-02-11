#!/usr/bin/env sh

# npm install
# npm run lint
# npm run test

npm run build
docker build -t ui-app:latest .
