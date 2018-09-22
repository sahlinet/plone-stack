# sed version

# https://medium.com/containerum/how-to-make-and-share-your-own-helm-package-50ae40f6c221

git rm -f *tgz

tag=`git describe --tags --abbrev=0`

find plone-stack -exec grep -l "version:" {} \; 2>/dev/null| xargs sed -i "" -e "s/\(.*version:\).*/\1 ${tag}/g"

helm package plone-stack

helm repo index plone-stack/ --url https://sahlinet.github.io/plone-stack/helm

git add plone-stack-*.tgz plone-stack/index.yaml plone-stack/Chart.yaml

exit 0 
