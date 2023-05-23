# Use a base image with Java and Tomcat installed
FROM openjdk:8-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the Java code to the working directory
COPY . .

# Build the Java code and package it into a WAR file
RUN ./gradlew build

# Copy the WAR file to the Tomcat webapps directory
RUN cp build/libs/*.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
