#!/bin/bash

echo '=== Generating git release notes...'
PreviousAndCurrentGitTag=$(git tag | sort -V | tail -2)
PreviousGitTag=$(echo $PreviousAndCurrentGitTag | cut -f 1 -d ' ')
CurrentGitTag=$(echo $PreviousAndCurrentGitTag | cut -f 2 -d ' ')

git-release-notes ${PreviousGitTag}..${CurrentGitTag} markdown > changelog-${PreviousGitTag}..${CurrentGitTag}.md
echo "=== Release notes generated -> changelog-${PreviousGitTag}..${CurrentGitTag}.md"
