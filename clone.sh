#!/bin/bash

env=$1
repo=$2

if [[ “$env == *work* ]]; then
  git clone $repo
fi

if [[ “$env == *home* ]]; then
  git clone git@github.com:hmrc/$repo.git
  cd $repo
  git config user.email "lukesmudgesmith@gmail.com"
fi

