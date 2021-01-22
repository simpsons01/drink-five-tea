#!/bin/bash

if [ "$TRAVIS_EVENT_TYPE" != "push" ]; then
 exit 0
fi

echo "start build phase"

if [ "$TRAVIS_BRANCH" == "lab" ]; then
  yarn build:lab
elif [ "$TRAVIS_BRANCH" == "staging" ]; then
  yarn build:staging
elif [ "$TRAVIS_BRANCH" == "prod" ]; then
  yarn build:prod
fi

exit 0