FROM maven:3.8.6-openjdk-8-slim AS build-env
RUN mkdir -p /opt/build
WORKDIR /opt/build
COPY . ./
# 包裝專案為JAR，放在target目錄
RUN mvn package

FROM openjdk:8-jre-alpine
WORKDIR /opt/app
COPY --from=build-env /opt/build/target/*.jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]
