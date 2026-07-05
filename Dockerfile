
FROM openjdk:17.0.1-jdk-slim

ARG JAR_FILE=target/*.jar

# Copy jar file
COPY ${JAR_FILE} app.jar

# Run the application
ENTRYPOINT ["java","-jar","/app.jar"]

# Expose application port
EXPOSE 8089 
