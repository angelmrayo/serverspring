FROM maven:3.6.0
EXPOSE 8080
COPY . .
RUN mvn clean
RUN mvn install
RUN mvn package
ADD /target/spring-server.jar demo.jar
ENTRYPOINT ["java","-jar","demo.jar"]