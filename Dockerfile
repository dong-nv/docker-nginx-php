FROM nginx:alpine

ENV DOCUMENT_ROOT=/var/www/html/public
ENV PHP_FPM_PORT=9000

COPY default.conf /etc/nginx/conf.d/default.conf
COPY docker-entrypoint /usr/local/bin

ENTRYPOINT [ "docker-entrypoint" ]

CMD [ "nginx", "-g", "daemon off;" ]
