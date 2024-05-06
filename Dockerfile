FROM tomcat:latest

COPY target/java-demo-docker-webapp-1.0.war /usr/local/tomcat/webapps/java-demo-docker-webapp.war
