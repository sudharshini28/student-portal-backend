FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN apk add --no-cache maven
RUN mvn -B -DskipTests clean package

EXPOSE 8080

CMD ["java", "-jar", "target/student-portal-backend-0.0.1-SNAPSHOT.jar"]
