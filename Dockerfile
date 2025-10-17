# Tomcat 9 base image with Java 17
FROM tomcat:9.0-jdk17

# Copy WAR file into Tomcat's webapps folder
COPY dist/EngineersStack.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
