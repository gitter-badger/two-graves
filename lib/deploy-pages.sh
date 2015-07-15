#!/bin/bash

set -e

cd output/html/single-file/
git init

git config user.name "Travis CI"
git config user.email "rwdalpe@gmail.com"

git add .
git commit -m "Deploy to GitHub Pages"

git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1
