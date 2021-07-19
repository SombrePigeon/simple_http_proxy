FROM nginx:alpine

LABEL maintainer="SombrePigeon"

LABEL repository="https://github.com/SombrePigeon/simple_http_proxy"

ARG HOST=http://example.com/

ADD nginx.conf /etc/nginx/conf.d/default.conf

RUN sed -i "s;HOST;${HOST};g" /etc/nginx/conf.d/default.conf
