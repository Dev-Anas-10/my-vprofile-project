# Stage 1: Build the artifact using Maven
FROM openjdk:11 as build-stage

# Install Maven and Git
RUN apt-get update && apt-get install -y maven git

# Set the working directory inside the container
WORKDIR /app

# Clone the specific branch from GitHub (replace with your repo and branch name)
RUN git clone --branch docker https://github.com/Dev-Anas-10/my-vprofile-project.git

# Change into the project directory and build the project using Maven
WORKDIR /app/my-vprofile-project
RUN mvn clean install

# Stage 2: Tomcat runtime environment
FROM tomcat:9-jre11

# Optional: Adding labels for metadata
LABEL Name="Anas"
LABEL project="vprofile"

# Set environment variables (optional)
ENV CATALINA_HOME /usr/local/tomcat

# Remove the default ROOT.war from the Tomcat webapps directory
RUN rm -rf $CATALINA_HOME/webapps/*

# Copy the built WAR file from the build stage to Tomcat's webapps directory as ROOT.war
COPY --from=build-stage /app/my-vprofile-project/target/*.war $CATALINA_HOME/webapps/ROOT.war

# Expose Tomcat's default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]