FROM maven:latest as build

COPY . /build
WORKDIR /build

RUN mvn clean install

FROM tomcat:latest

COPY --from=build /build/target/java-demo-docker-webapp-1.0.war /usr/local/tomcat/webapps/java-demo-docker-webapp.war
