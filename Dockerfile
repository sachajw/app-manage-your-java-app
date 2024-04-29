FROM bitnami/tomcat:latest

ENV ALLOW_EMPTY_PASSWORD=yes

COPY target/java-demo-docker-webapp-1.0.war /app/java-demo-docker-webapp.war