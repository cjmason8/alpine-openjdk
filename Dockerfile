FROM eclipse-temurin:17-jre-alpine

RUN adduser -D -u 1000 localUser

RUN apk update
RUN apk add curl

RUN mkdir /app

RUN chown localUser /app

USER localUser
