
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy jar file
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# Expose application port
EXPOSE 8089

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]

