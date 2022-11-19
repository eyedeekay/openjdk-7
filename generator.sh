#! /usr/bin/env sh
git init
find . -not -path "./.git/*" -size +100M > .gitignore
git remote add origin git@github.com:eyedeekay/openjdk-7
git add .gitignore
sed -i 's|\./||g' .gitignore
git commit -am "checkin .gitignore"
git push --all --force
rm -fv README.md
edgar
git push --all
git add .
git commit -am "checkin files"
git push --all
find etc usr -type d -exec bash -c "cd {} && edgar && git push --all" \;