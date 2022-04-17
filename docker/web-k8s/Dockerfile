FROM node:13.11.0-alpine3.11

ENV NODE_ENV development

RUN apk add yarn
ADD ./docker/web-k8s/start.sh /
RUN chmod +x /start.sh
COPY ./web /web
WORKDIR /web

CMD ["/start.sh"]