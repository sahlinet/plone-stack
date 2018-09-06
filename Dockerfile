FROM plone:5

RUN pip install j2cli
RUN apt-get update 
RUN apt-get install moreutils -y

ADD start.sh /start.sh

COPY site.cfg /plone/instance/

RUN gosu plone buildout -c /plone/instance/site.cfg

ENTRYPOINT ["bash", "-x", "/start.sh"]
#ENTRYPOINT ["sleep", "3600"]
