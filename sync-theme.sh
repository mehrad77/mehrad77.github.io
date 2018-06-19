#! /usr/bin/bash
pwd

#Checking if everything is up to date and sync, then generate latest hexo
echo "$(tput setaf 1) en pushing $(tput sgr 0)"
cd en/themes/cactus/
git add .
git commit -m "`LC_TIME=en_US date`" 
git push -u origin master
git stash pop
cd ../../

echo "$(tput setaf 1) de pulling $(tput sgr 0)"
cd ../de/themes/cactus/
git stash
git pull --force
git stash pop
cd ../../

echo "$(tput setaf 1) fa pulling $(tput sgr 0)"
cd ../fa/themes/cactus/
git stash
git pull --force
git stash pop
cd ../../

echo "$(tput setaf 1) per pulling $(tput sgr 0)"
cd ../per/themes/cactus/
git stash
git pull --force
git stash pop
cd ../../

echo "$(tput setaf 2) ==[All synced!]== $(tput sgr 0)"
