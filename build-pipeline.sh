#!/usr/bin/env sh

# npm install
# npm run lint
# npm run test

export REACT_APP_API_BASE_URL=http://build-time-localhost:8080
export REACT_APP_THIRD_PARTY_PUBLIC_KEY=build_time_12345fd6xQLCpusJHcjMVyFTh
npm run build
