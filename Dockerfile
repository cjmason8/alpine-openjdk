FROM openjdk:8u171-jdk-alpine3.8

RUN adduser -D -u 1000 expenseUser

RUN mkdir /app

RUN chown expenseUser /app

USER expenseUser
