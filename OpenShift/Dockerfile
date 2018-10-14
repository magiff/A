FROM alpine:latest
ENV VER=3.47

#ENV CONFIG_JSON=none CERT_PEM=none KEY_PEM=none VER=3.47
#RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
# && mkdir -m 777 /v2raybin \ 
# && cd /v2raybin \
# && curl -L -H "Cache-Control: no-cache" -o v2ray-linux-64.zip https://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip \
# && unzip v2ray-linux-64.zip \
# && chmod +x /v2raybin/ \
# && rm -rf v2ray-linux-64.zip \
# && rm -rf v2ray-linux-64 \
# && chgrp -R 0 /v2raybin \
# && chmod -R g+rwX /v2raybin

RUN mkdir -m 777 /user/bin/v2ray

COPY V2Ray.json /user/bin/v2ray/config.json
 
ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh 

ENTRYPOINT  /entrypoint.sh 

EXPOSE 8080
