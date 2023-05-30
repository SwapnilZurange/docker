# Use the official OpenJDK 11 image as the base image
FROM openjdk:11-windowsservercore

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file to the container
COPY target/myapp.jar myapp.jar

# Expose the port on which the Spring Boot application listens
EXPOSE 8080

# Set the command to run the Spring Boot application
CMD ["java", "-jar", "myapp.jar"]
