# GitHub Branch Sync

A GitHub Action for syncing repository branches using **force push**.

## Features

* Sync branches between two GitHub repositories
* GitHub action can be triggered on a timer or on push

## Usage

### GitHub Actions

```
# File: .github/workflows/github-branch-sync.yml

name: Git Branch Sync

on:
  push:
    branches:
    - 'master'
  schedule:
    # Scheduled workflows run on the latest commit on the default branch
    - cron: "0 0 * * *"
jobs:
  branch-sync:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: branch-sync
      uses: getdreams/github-branch-sync
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
      with:
        source_branch: "master"
        destination_branch: "develop"
```
