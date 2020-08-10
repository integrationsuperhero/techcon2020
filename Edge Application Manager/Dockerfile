FROM alpine

RUN apk update \
    && apk add lighttpd \
    && rm -rf /var/cache/apk/*

RUN apk --no-cache --update add jq curl bash

WORKDIR /

COPY app/html/ /var/www/localhost/htdocs
COPY app/scripts/ /

RUN chmod +x /*.sh

EXPOSE 80

CMD ["/start.sh"]