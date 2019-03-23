FROM adoptopenjdk/openjdk11:jre-11.0.2.9-alpine

RUN adduser -D -u 1000 localUser

RUN apk update
RUN apk add curl

RUN mkdir /app

RUN chown localUser /app

USER localUser
