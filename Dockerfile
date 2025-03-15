FROM openjdk:17-jdk-slim
EXPOSE 9099
ADD target/spring-rest-simple-one-0.0.1-SNAPSHOT.jar spring-rest-simple-one-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","sping-rest-simple-one-0.0.1-SNAPSHOT.jar"