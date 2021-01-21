#!/bin/bash
echo "start test phase"

if { [ "$TRAVIS_BRANCH" == "lab" ] || [ "$TRAVIS_BRANCH" == "staging" ] || [ "$TRAVIS_BRANCH" == "prod" ]; } && 
   [ "$TRAVIS_EVENT_TYPE" == "pull_request" ]; then
yarn lint;
fi

exit 0
