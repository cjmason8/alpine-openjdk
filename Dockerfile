FROM adoptopenjdk/openjdk14:jre-14_36-alpine

RUN adduser -D -u 1000 localUser

RUN apk update
RUN apk add curl

RUN mkdir /app

RUN chown localUser /app

USER localUser
