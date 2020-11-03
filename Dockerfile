FROM openjdk:8-jdk-alpine

ENV APP_WORKSPACE=/workspace/app/
WORKDIR $APP_WORKSPACE

ADD gradle gradle
COPY build.gradle build.gradle
COPY gradlew gradlew
COPY settings.gradle settings.gradle

# Only download dependencies
RUN ./gradlew getDeps --no-daemon

#copy the build artifacts
ADD build/classes build/classes
ADD build/resources build/resources
