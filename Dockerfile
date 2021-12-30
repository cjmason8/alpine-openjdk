FROM openjdk:17-alpine

RUN adduser -D -u 1000 localUser

RUN apk update
RUN apk add curl

COPY UnlimitedJCEPolicyJDK8/*.jar /opt/openjdk-17/lib/security/

RUN mkdir /app

RUN chown localUser /app

USER localUser
