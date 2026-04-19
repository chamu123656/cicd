# Use a Java base image
FROM eclipse-temurin:17-jdk-alpine
# Copy the war/jar from Maven's target folder
COPY target/*.jar app.jar
# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
