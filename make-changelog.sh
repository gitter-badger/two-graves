#!/bin/bash

# Copyright (C) 2014 Robert Winslow Dalpe
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# 
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

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
