#! /usr/bin/bash
pwd

#Checking if everything is up to date and sync, then generate latest hexo
echo "$(tput setaf 1) en generating $(tput sgr 0)"
cd en
hexo generate

echo "$(tput setaf 1) de generating $(tput sgr 0)"
cd ../de
hexo generate

echo "$(tput setaf 1) fa generating$(tput sgr 0)"
cd ../fa
hexo generate

echo "$(tput setaf 1) per generating $(tput sgr 0)"
cd ../per
hexo generate

echo "$(tput setaf 2) ==[All generated!]== $(tput sgr 0)"
