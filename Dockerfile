FROM tomcat:latest

LABEL org.opencontainers.image.source https://github.com/humanitec-tutorials/manage-your-java-app

ENV ALLOW_EMPTY_PASSWORD=yes

COPY target/java-demo-docker-webapp-1.0.war /usr/local/tomcat/webapps/java-demo-docker-webapp.war