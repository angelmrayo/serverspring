FROM maven:3.6.0
EXPOSE 8080
COPY . .
RUN mvn clean
RUN mvn install
RUN mvn package
ENTRYPOINT ["java","-jar","/target/swagger-spring-1.0.0-jar-with-dependencies.jar"]