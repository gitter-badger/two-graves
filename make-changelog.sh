#!/bin/bash

MADEFILE=0
USELASTCOMMIT=0
LASTCOMMIT=""

if [ -e $1 ]
then
  # Extract the last commit hash from the changelog
  LASTCOMMIT=$(sed '5q;d' "$1" | sed -n 's/.*\[\(.*\)\].*/\1/p')
  if [ -n "$LASTCOMMIT" ]
  then
    USELASTCOMMIT=1
  fi
else
  touch "$1"
  MADEFILE=1
fi

GITARGS=""

if [ $USELASTCOMMIT -eq 1 ]
then
  GITARGS+="$LASTCOMMIT.."
fi

GITARGS+=" -- src/common $2"

GITRESULTS=$(git log --pretty=format:"### %s%n%n[%H](https://github.com/rwdalpe/two-graves/commit/%H)%n%n%aN <%aE>%n%n%cI%n%n%b" $GITARGS)

if [ -n "$GITRESULTS" ]
then
  echo -e "$GITRESULTS\n" > "$1.new"
  mv "$1.new" "$1"
  echo -e "## $(date --date "$3" +"%Y-%m-%d %H:%M %Z")\n" | cat - "$1" > "$1.new"
  mv "$1.new" "$1"
fi
