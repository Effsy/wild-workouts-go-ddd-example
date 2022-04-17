FROM golang:1.17

ARG SERVICE

RUN go get github.com/cespare/reflex
COPY ./docker/app-k8s/reflex.conf /
COPY ./docker/app-k8s/start.sh /

RUN mkdir /internal
COPY ./internal /internal
WORKDIR /internal/$SERVICE

ENTRYPOINT ["reflex", "-c", "/reflex.conf"]
