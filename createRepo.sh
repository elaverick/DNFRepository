#!/usr/bin/env bash

yum --assumeyes install createrepo
mkdir repo -p
createrepo repo
cd repo
git init -b main
git remote add origin $REPO_URL
git add .
git commit -m "First Commit"
git push origin main