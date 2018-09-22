# Plone Stack

## Batteries includes

### Components

* Postgresql (from philipsahli/postgresql-test)
* NGINX Frontend Webserver (for the site)
* Plone Application

### Plone Eggs

* RelStorage
* RelStorage[postgresql]
* plonetheme.cleanblog
* plonetheme.booster
* plone.app.mosaic
* collective.disqus (2.2)
* zope.formlib
* zope.processlifetime


## How to run

### docker-compose

    git clone https://github.com/sahlinet/plone-stack.git 
    cd plone-stack/images/plone
    docker-compose up

### Kubernetes
    
    helm repo add plone-stack https://sahlinet.github.io/plone-stack/helm/plone-stack
    helm install plone-stack/plone-stack -n my-plone

### Minikube (for local testing)

    helm install plone-stack/plone-stack -n my-plone -f https://raw.githubusercontent.com/sahlinet/plone-stack/gh-pages/helm/plone-stack/values-minikube.yaml

