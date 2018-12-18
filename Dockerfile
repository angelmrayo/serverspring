FROM maven:3.6.0
EXPOSE 8080
COPY . .
ADD /target/swagger-spring-1.0.0-jar-with-dependencies.jar demo.jar
ENTRYPOINT ["java","-jar","demo.jar"]