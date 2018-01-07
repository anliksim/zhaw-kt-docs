#!/bin/bash

LOG_MSG_CNT=1

# Define how many log messages to use
if [ ! -z "$1" ]; then
  LOG_MSG_CNT=$1
fi


print_dl() {
	echo "============================="
}

# Requires a branch named gh-pages 

if [ ! -d "dist" ]; then
  echo "Creating gh-pages worktree..."
  git worktree add dist gh-pages
fi

gitbook build

cp -r _book/* dist/


echo -e "Publish page\n" > msg.tmp
git log -$LOG_MSG_CNT >> msg.tmp

cd dist

MSG_FILE=../msg.tmp

echo
print_dl
echo "Commit message:"
print_dl
echo "$(tput setaf 3)"
cat $MSG_FILE
echo "$(tput sgr0)"

echo
print_dl
echo "Commit status:"
print_dl
git status

echo
echo "$(tput setaf 6)"
read -p "Commit all? [y/n] " go
echo "$(tput sgr0)"

if [ ! $go = 'y' ]; then
	echo "Aborting..."
	exit
fi

git add -A
git commit -F $MSG_FILE
git push

rm -f msg.tmp


