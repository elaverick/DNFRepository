#!/usr/bin/env bash

yum --assumeyes install createrepo
mkdir repo -p
createrepo repo
cd repo
git init -b main
git remote add origin $REPO_URL
git pull origin main --allow-unrelated-histories
git add .
git commit -m "First Commit"
git push origin main