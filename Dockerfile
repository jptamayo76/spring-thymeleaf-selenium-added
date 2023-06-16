#FROM openjdk:11
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]
FROM openjdk:11
EXPOSE 8083
ADD target/App-de-Prueba.jar App-de-Prueba.jar
ENTRYPOINT [ "java", "-jar", "App-de-Prueba.jar" ]
