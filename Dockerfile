FROM openjdk:8-jdk-alpine
ENV APP_WORKSPACE=/workspace/app/
WORKDIR $APP_WORKSPACE
ADD build/classes build/classes
ADD build/resources build/resources
ADD gradle gradle
COPY build.gradle build.gradle
COPY gradlew gradlew
COPY settings.gradle settings.gradle