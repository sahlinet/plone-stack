# sed version

# https://medium.com/containerum/how-to-make-and-share-your-own-helm-package-50ae40f6c221

rm plone-stack/*tgz

tag=`git describe --tags --abbrev=0`

find plone-stack -exec grep -l "version:" {} \; 2>/dev/null| xargs sed -i "" -e "s/\(.*version:\).*/\1 ${tag}/g"

helm package plone-stack
mv plone-stack-${tag}.tgz plone-stack
helm repo index plone-stack/ --url https://sahlinet.github.io/plone-stack/helm

git add plone-stack/plone-stack-${tag}.tgz plone-stack/index.yaml plone-stack/Chart.yaml

exit 0 
  551  cat plone-stack
  552  cat plone-stack/index.yaml 
  553  ls -la
  556  rm plone-stack/
  557  rm plone-stack/index.yaml 
  558  helm repo index plone-stack/ --url https://sahlinet.github.io/plone-stack/helm
  559  cat plone-stack/index.yaml 
  560  git status
  561  git status
  562  git status
  563  git status
  564  l s-al
  565  cd ..
  567  git status
  568  git add helm/plone-stack/plone-stack-0.1.10.tgz 
  569  git add helm/plone-stack/index.yaml 
  570  tar -zxvf helm/plone-stack/plone-stack-0.1.10.tgz 
  571  helm package plone-stack -h
  573  helm package -h
  576  mkdir private
  577  mv helm/plone-stack/values-live.yaml private/
  578  mv helm/plone-stack/install-l* private/
  582  mv plone-stack/values.yaml.old_local private
  583  cd plone-stack/
  584  ls -la
  585  cd ../../
