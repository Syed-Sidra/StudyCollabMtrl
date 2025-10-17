# Use official GlassFish base image
FROM glassfish:6.2.5-jdk17

# Copy WAR file into autodeploy folder
C:\Users\hp\Documents\NetBeansProjects\StudyCollabMtrl\dist\StudyCollabMtrl.war /glassfish5/glassfish/domains/domain1/autodeploy/ROOT.war

# Expose default GlassFish port
EXPOSE 8080

# Start GlassFish domain
CMD ["asadmin", "start-domain", "-v"]

