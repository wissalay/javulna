# Use the official Tomcat 9 image as the base image
FROM tomcat:9.0

# Set the working directory to the Tomcat webapps directory
WORKDIR /usr/local/tomcat/webapps

#COPY context.xml /usr/local/tomcat/conf/
#COPY tomcat-users.xml /usr/local/tomcat/conf/
RUN mv webapps webappsSS
RUN mv webapps.dist webapps 

# Copy the artifact from the project directory to the Tomcat webapps directory
COPY ./target/javulna-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/

# Remove the default ROOT application (if needed)
RUN rm -rf /usr/local/tomcat/webapps/

# Rename the WAR file to ROOT.war to deploy it as the default application
#RUN mv javaluna-0.1.war ROOT.war


# Expose the default Tomcat port (8080)
EXPOSE 8080

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
