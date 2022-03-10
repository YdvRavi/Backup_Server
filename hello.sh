#! /bin/bash

declare -A map

map["origin"]="delDSL_Backup_Server"

git init
git checkout -b Master
git add --a
git commit -m "Please_Check_Change_Config"

for i in "${!map[@]}"
do
        git remote add $i git@github.com:YdvRavi/${map[$i]}.git
        git push -u $i Master
done
