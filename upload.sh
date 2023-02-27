#!/bin/bash

# rm -rf dist 2>/dev/null
rm -rf coverage 2>/dev/null

# git fetch --all
# git checkout -b develop
# git checkout develop

# GIT_BRANCH "feature/generator-plugin"

# GIT_MERGE

# git checkout -b develop

# # delete the branch
# git branch -D develop

# # list all branches
# git branch -a

# git config --global push.autoSetupRemote true
# cat  ~/.gitconfig

# https://github.com/git/git/tree/master/contrib/completion
#  sudo apt-get install git-extras

# npm login --scope=@organization --registry=registry.organization.com,

function GIT_MAIN() {
    NAME=$1
    git fetch --all
    git checkout origin main
    git pull origin develop
    git status
}

function GIT_MERGE() {
    git add .
    git commit -m "merge" --allow-empty --no-verify
    git push
    git merge --no-ff --no-edit origin/master
}

function GIT_UPDATE() {
    git add .
    git commit -m "update" --allow-empty --no-verify
    git push
}

function GIT_BRANCH() {
    NAME=$1
    git fetch --all
    git checkout -b $NAME
    git push --set-upstream origin $NAME
    git status
}

GIT_UPDATE
wait

yarn nx reset 2>/dev/null
yarn nx repair 2>/dev/null

# git flow feature finish ext-pkg
