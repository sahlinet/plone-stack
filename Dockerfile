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

ENTRYPOINT ["bash", "-x", "/start.sh"]
#ENTRYPOINT ["sleep", "3600"]
