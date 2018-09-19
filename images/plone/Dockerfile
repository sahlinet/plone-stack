FROM plone:5

RUN pip install j2cli
RUN apt-get update 
RUN apt-get install moreutils -y

ADD start.sh /start.sh

COPY site.cfg /plone/instance/

RUN gosu plone buildout -c /plone/instance/site.cfg

RUN sed -i -e 's|path\s.*log|path STDOUT|' /plone/instance/parts/instance/etc/zope.conf
RUN sed -i -e 's|level\s.*|level INFO|' /plone/instance/parts/instance/etc/zope.conf

RUN sed -i -n '/.*max-size.*/!p' /plone/instance/parts/instance/etc/zope.conf
RUN sed -i -n '/.*old-files.*/!p' /plone/instance/parts/instance/etc/zope.conf

# TODO: Create issue on https://github.com/collective/collective.disqus
# Mixed Content: The page at 'https://plone.sahli.net/blog/bash-vs-python' was loaded over HTTPS, but requested an insecure script 'http://sahlinet.disqus.com/count.js'. This request has been blocked; the content must be served over HTTPS.
RUN sed -i 's|http://|//|g' /plone/buildout-cache/eggs/collective.disqus-2.1-py2-none-any.ovo/collective/disqus/browser/disqus_summary_view.py

ENTRYPOINT ["bash", "-x", "/start.sh"]
#ENTRYPOINT ["sleep", "3600"]
