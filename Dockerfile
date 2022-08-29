FROM maven:3.8.6-openjdk-11
ENV GOLDEN_DB_URL=localhost
ENV GOLDEN_DB_NAME=goldenwaste
ENV GOLDEN_DB_USERNAME=root
ENV GOLDEN B_ PASSWORD=DevOps2022
ENV GOLDEN DB PORT=3306
WORKDIR /app
ADD pom.Xml .
RUN ["/usr/local/bin/mvn-entrypoint.sh","mvn","verify"; "clean", "--fail-never"]
COPY . .
RUN mvn package
EXPOSE 8080
ENTRYPOINT ["java","-jar","target/goldenWastedd-0.0.1-SNAPSHOT.jar"]

