#!env bash -xe

# https://medium.com/containerum/how-to-make-and-share-your-own-helm-package-50ae40f6c221

# git rm -f *tgz

tag=$1

find plone-stack -exec grep -l "version:" {} \; 2>/dev/null| xargs sed -i "" -e "s/\(.*version:\).*/\1 ${tag}/g"

helm package plone-stack --version $tag

cp *tgz plone-stack/

helm repo index plone-stack/ --url https://sahlinet.github.io/plone-stack/helm/plone-stack

git add plone-stack/*tgz plone-stack-*.tgz plone-stack/index.yaml plone-stack/Chart.yaml

git commit -m "prepare version ${tag}"

exit 0 
