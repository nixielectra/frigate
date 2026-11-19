FROM ghcr.io/blakeblackshear/frigate:stable

RUN sed -i 's|access_log /dev/stdout main;|access_log off;|' /usr/local/nginx/conf/nginx.conf \
    && grep -Fq 'access_log off;' /usr/local/nginx/conf/nginx.conf