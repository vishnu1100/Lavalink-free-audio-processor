FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY . /app
RUN chmod +x Lavalink.jar
CMD ["java", "-jar", "Lavalink.jar"]
