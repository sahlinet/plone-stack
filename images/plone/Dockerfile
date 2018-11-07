FROM plone:5.1.4

RUN pip install j2cli
RUN apt-get update 
RUN apt-get install moreutils -y

COPY site.cfg /plone/instance/

RUN gosu plone buildout -c /plone/instance/site.cfg

RUN sed -i -e 's|path\s.*log|path STDOUT|' /plone/instance/parts/instance/etc/zope.conf
RUN sed -i -e 's|level\s.*|level INFO|' /plone/instance/parts/instance/etc/zope.conf

RUN sed -i -n '/.*max-size.*/!p' /plone/instance/parts/instance/etc/zope.conf
RUN sed -i -n '/.*old-files.*/!p' /plone/instance/parts/instance/etc/zope.conf

ADD start.sh /start.sh

ENTRYPOINT ["bash", "-x", "/start.sh"]
