#!env bash -xe

# https://medium.com/containerum/how-to-make-and-share-your-own-helm-package-50ae40f6c221

cd helm

tag=$1

find plone-stack -exec grep -l "version:" {} \; 2>/dev/null| xargs sed -i "" -e "s/\(.*version:\).*/\1 ${tag}/g"
find plone-stack -exec grep -l "tag: [0-9]" {} \; 2>/dev/null| xargs sed  -i "" -e "s/\(.*tag:\) [0-9].*/\1 ${tag}/g"

helm package plone-stack --version $tag

#cp *tgz plone-stack/

helm repo index . --url https://sahlinet.github.io/plone-stack/helm/

git add *tgz index.yaml plone-stack/Chart.yaml plone-stack/values.yaml ../.bumpversion.cfg

git commit -m "prepare version ${tag}"

git tag $tag

exit 0 
