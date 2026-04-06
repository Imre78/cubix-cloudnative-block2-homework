FROM quay.io/drsylent/cubix/block2/homework-base:java21

LABEL cubix.homework.owner="Posztor Imre Zsolt"

ENV CUBIX_HOMEWORK="Posztor Imre Zsolt"
ENV APP_DEFAULT_MESSAGE=""

WORKDIR /opt/app

ARG APP_DIR
ARG JAR_FILE

COPY ${APP_DIR}/${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/opt/app/app.jar"]
