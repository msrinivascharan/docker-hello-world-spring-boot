FROM openjdk:11

#expose port 8080
EXPOSE 8080

COPY target/hello-world-0.1.0.jar /data/hello-world-0.1.0.jar
ENTRYPOINT ["java","-jar","/data/hello-world-0.1.0.jar"]
