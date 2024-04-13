FROM maven:3.9.6-eclipse-temurin-17-focal

WORKDIR /app

COPY pom.xml .

RUN mvn clean package -Dmaven.compiler.source=1.8 -Dmaven.compiler.target=1.8

COPY target/*.jar java-app.jar

ENTRYPOINT [ "java", "-jar", "java-app.jar" ]