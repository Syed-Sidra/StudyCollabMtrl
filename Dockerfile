# Base image
FROM glassfish:6.2.5-jdk17

# Copy WAR file from your local project (relative path)
COPY StudyCollabMtrl.war /glassfish5/glassfish/domains/domain1/autodeploy/ROOT.war

# Expose the GlassFish port
EXPOSE 8080

# Start GlassFish domain
CMD ["asadmin", "start-domain", "-v"]
