# Use maintained GlassFish image from OmniFish
FROM omnifish/glassfish:7.0.15

# Copy WAR file into autodeploy directory
COPY dist/StudyCollabMtrl.war /glassfish6/glassfish/domains/domain1/autodeploy/ROOT.war

# Expose port
EXPOSE 8080

# Start GlassFish domain
CMD ["asadmin", "start-domain", "-v"]
