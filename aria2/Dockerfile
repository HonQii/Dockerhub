FROM alpine:latest

RUN apk update \
    && apk add --no-cache --update aria2 darkhttpd \
    && mkdir -p aria2/conf aria2/downloads aria-ng \
    && wget --no-check-certificate https://github.com/mayswind/AriaNg/releases/download/1.1.7/AriaNg-1.1.7.zip \
    && unzip AriaNg-1.1.7.zip -d aria-ng \
    && rm -rf AriaNg-1.1.7.zip

COPY start.sh /aria2/start.sh
COPY aria2.conf /aria2/conf/aria2.conf

WORKDIR /
VOLUME ["/aria2/conf", "/aria2/downloads"]
EXPOSE 6800 80

CMD ["/aria2/start.sh"]
