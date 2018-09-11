FROM nginx

RUN rm /etc/nginx/conf.d/default.conf

ADD nginx-plone.conf /etc/nginx/conf.d/plone.conf
ADD start.sh /

ENTRYPOINT ["bash", "-x", "/start.sh"]
