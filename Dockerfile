# Use official GlassFish image
FROM glassfish:6.2.5

# Copy WAR file into GlassFish autodeploy directory
COPY dist/StudyCollabMtrl.war /glassfish5/glassfish/domains/domain1/autodeploy/ROOT.war

# Expose default GlassFish HTTP port
EXPOSE 8080

# Start GlassFish domain
CMD ["asadmin", "start-domain", "-v"]
