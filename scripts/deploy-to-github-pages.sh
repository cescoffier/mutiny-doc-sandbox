#!/bin/bash

BRANCH=gh-pages
DIR=target

rm -Rf $DIR
mkdir -p $DIR
cd $DIR
git clone -b $BRANCH https://${JEKYLL_PAT}@github.com/cescoffier/mutiny-doc-sandbox.git site
cp -R ../_site/* site
rm -Rf site/target
git commit -am "Update web site"
git push origin $BRANCH
echo "Web site updated..."
