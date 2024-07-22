#!/bin/bash
# Upload files to Github - git@github.com:talesCPV/modern.git

read -p "Are you sure to commit Sidebar to GitHub ? (Y/n)" -n 1 -r
echo  
if [[ $REPLY =~ ^[Yy]$ ]]
then

    git init

    git add assets/
    git add index.html
    git add commit.sh
    git add menu.css

    git commit -m "by_script"

    git branch -M main
    git remote add origin git@github.com:talesCPV/modern.git
    git remote set-url origin git@github.com:talesCPV/modern.git

    git push -u -f origin main

fi