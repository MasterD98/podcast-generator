#!/bin/bash

echo "================================="
git config --global user.name "${GITHUB_ACTOR}"

git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

git pull origin main

python3 /usr/bin/feed.py > podcast.xml

git add -A && git commit -m "Update feed"
git push --set-upstream origin main

echo "================================="