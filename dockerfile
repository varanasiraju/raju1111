FROM openjdk:8-jre-alpine
ADD target/*.jar /app.jar
EXPOSE 8888
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/app.jar"]
