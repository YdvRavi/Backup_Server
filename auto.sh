#! /bin/bash

declare -A map

map["Ravi"]="Backup_Server"

git init
git checkout -b Master
git add --a
git commit -m "Changed_Config"

for i in "${!map[@]}"
do
        git remote add $i git@github.com:YdvRavi/${map[$i]}.git
        git push -u $i Master
done
