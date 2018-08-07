#!/bin/bash

ng build
touch dist/CNAME
echo "elpeterson.com" >> dist/CNAME
echo "www.elpeterson.com" >> dist/CNAME
git add dist
git commit -m "dist folder push for deployment"
git push
git push origin `git subtree split --prefix dist development`:master --force